---
layout: post
title: "A nice title page for beamer presentations"
date: 2013-06-12 19:14
comments: true
categories: 
twitter: 
publish: false
---

I use beamer for making slide presentations. I really like 


<!-- more -->

Code available here:


# Set background image

```
{ 
	\usebackgroundtemplate{\includegraphics[width=1.0\paperwidth]{images/Background.jpg}}
  \begin{frame}[plain] 
  \end{frame}
}
```

# Overlay a text box

Seems like should be relatively simple to do, but my first search revealed large slabs of code. I then posted a plea for help on twitter, with no response. 
<blockquote class="twitter-tweet"><p><a href="https://twitter.com/search/%23beamer">#beamer</a> <a href="https://twitter.com/search/%23latex">#latex</a> Anyone know how to overlay a transparent text box on a photo for a nice title page in beamer? e.g. <a href="http://t.co/h9h1lhbx6k" title="http://twitter.com/adaptive_plant/status/342025944241958912/photo/1">twitter.com/adaptive_plant…</a></p>&mdash; Daniel Falster (@adaptive_plant) <a href="https://twitter.com/adaptive_plant/status/342025944241958912">June 4, 2013</a></blockquote><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

A bit more yielded answer. Several options.

- [This talk by Vesa Linja-aho](http://www.slideshare.net/linjaaho/how-to-make-boxed-text-with-latex) outlines several options for using framed tex. This alerted me to the framed and [mdframed](https://github.com/marcodaniel/mdframed) packages.
- [Here's a solution using tikz](http://tex.stackexchange.com/questions/53784/overlay-images-and-block-in-beamer), although was a bit more complicated than I would like.
- You can also customise the block environment, as explained [here](http://tex.stackexchange.com/questions/28760/custom-beamer-blocks) and [here](http://tex.stackexchange.com/questions/55596/how-to-make-partially-transparent-beamercolorbox), including with a [semi-transparent or transpraent background](http://tex.stackexchange.com/questions/18447/how-to-make-a-block-transparent-for-a-background-image).

In the end, my preferred option is to use the [mdframed](https://github.com/marcodaniel/mdframed) package, as the code is relatively concise and the package comes pre-packaged with my latex installation. The [user guide for mdframed](http://cloud.github.com/downloads/marcodaniel/mdframed/mdframed.pdf) is quite good, but did not explain how to make the box transparent, that trick is achaived using the tikz settings, as explained [here](http://tex.stackexchange.com/questions/38281/transparent-background-for-mdframed-environment/38298#38298) on stackexchange.

The eventual code is quite simple. Of course you need to include the package:

```latex
\usepackage[framemethod=tikz]{mdframed}
```
This code will then create a box with transparent background
```latex
\begin{mdframed}[tikzsetting={draw=black,fill=white,fill opacity=0.7, line width=4pt},backgroundcolor=none,leftmargin=0,rightmargin=40,innertopmargin=4pt]
  Text in my text box
\end{mdframed}
```
or, if you prefer, you can define a new md environment 

```latex
\newmdenv[tikzsetting={draw=black,fill=white,fill opacity=0.7, line width=4pt},backgroundcolor=none,leftmargin=0,rightmargin=40,innertopmargin=4pt]{transparentTitleBox}
```
and call it 

```latex
\begin{transparentTitleBox}
A transparent box
\end{transparentTitleBox}
```
The above example uses the tikz options for formatting, which enables the transparent background, but if you want a filled background, you can also use the formatting options in mdframed:

```latex
\begin{mdframed}[outerlinewidth=3,leftmargin=0,%
rightmargin=20,backgroundcolor=white,%
outerlinecolor=black,innertopmargin=2pt,%
splittopskip=\topskip,skipbelow=\baselineskip,%
skipabove=\baselineskip]
  Text in my text box
\end{mdframed}
```

To position the box on the page use....

# Adding text

beamer has built in options fro creating title pages. If you have defined your title, author, data and/or institution, can use these 



# Linking to my twitter account, email and website

In addition to a text box, I also want handles to my twitter, web and email accounts on the title page. As [Hilary Mason, chief research scientist at bitly, explains](http://www.hilarymason.com/speaking/speaking-title-slides-twitter-you-win/, including a twitter handle:

1. Allows people to post you questions they didn't get to ask during the talk
2. Let's everyone know you'll be watching what they say about your talk!

It turns out that it is incredibly easy to make a web link in your talk:

```
\href{http://twitter.com/adaptive_plant}{@adaptive\_plant}
```
Adding pretty icons is also relatively straight forward, using [FontAwesome](http://fortawesome.github.io/Font-Awesome/). On a mac, you can get fontawesome working by following [these instructions](https://coderwall.com/p/r67dyq)There's a couple of restrictions. 
1. fontAwsome must be be installed in the system fontbook
2. You need to include the fontspec package, and use xelatek to compile your talk. 

A cheatheet of symbols available here: http://fortawesome.github.io/Font-Awesome/cheatsheet/

# Lastly, control spacing 

\vspace command. can be used on any page to move elements up or down, and \hspace to move them left or right

em - size of uppercase

```
 \vspace{15em}
```

Acknowledgements: Thanks to Rich FitzJohn for discussions, showing me how to make a make file, and reassuring me that there was no easy solution 

Thanks to coders who posted at links listed in this page, including of course creators of Beamer and Latex, which despite their gory nature, still remain best option (IMO) for making presentations. 

