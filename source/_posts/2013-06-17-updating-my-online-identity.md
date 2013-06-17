---
layout: post
title: "Updating my online identity"
date: 2013-06-17 07:50
comments: true
categories: tools
twitter: true
---

{% img left http://blog.riastar.net/images/posts/2013/octopress.png 150 150 %}

Wow - The web has changed. My previous web page was built in 2003, and served me
for an amazing 10 years. In that time the web was remade, and
I fell out of touch. I decided it was time to update my online identity.
<!--more -->

This is what I used to look like:

{% img ../../../../../images/2013-06-17-updating-my-online-identity/Falster-webapge-old-1.jpg %}

{% img ../../../../../images/2013-06-17-updating-my-online-identity/Falster-webapge-old-2.jpg %}

Cute huh?

It wasn't that I didn't like my old web page, rather that it was very hard to
add content and did not work well on devices like smartphones and ipads. Written in
plain old html, updating required expensive software like dreamweaver,
knowledge of html, access to ftp servers and so on. These days it seems only
engineers write websites from scratch.

Web 2.0 allows ordinary users to generate content on platforms like wordpress,
google sites, and academia.edu, without knowing all the tech tricks. These new
sites also make it easy to include a range of content, such as images, videos,
and code.

# My requirements

I want the following from a web page

- **It contains -- or links to -- information about me, my research activities,
  publications**. It should give an impression of professional identify, for
those who want to know more about me.
- **Is easy to post new content**.
- **Can handle code**.
- **Has blogging capabilities**. I like the idea of posting thoughts, even if
no one reads them, as a kind of journal. I would also like to post technical
tips when I have something to offer.

# Choosing a platform
The biggest and first decision was to choose between a static and dynamic
platform. Dynamic platforms like [wordpress](www.wordpress.com) have become very
popular, as they come with a set of built-in themes and plug-ins which are very
easy to use. But they also need a lot of background infrastructure, and thus
require you to work online in point and click mode. For that reason,  some more
technically minded people are opting for a static site generators like Jekyll.
(Read more on this
[here](http://decomplecting.org/blog/2012/07/04/static-is-beautiful/) and
[here](http://www.adrianartiles.com/blog/2012/09/09/why-i-chose-jekyll-slash-octopress-over-wordpress/).)
A number of scientists are using these schemes for keeping open lab notebooks,
such as this one by [Carl Boettiger](http://carlboettiger.info/lab-notebook.html).

In the end, I opted to try [Octopress](http://octopress.org/), a static website
platform based on [Jekyll](https://github.com/mojombo/jekyll). Rich FitzJohn
introduced me to Octopress when we started the [nice R code
blog](http://nicercode.github.io/). Octopress sites can be hosted on github, and
because they are used by coders passionate about open source tools, there are
lots of sites and themes you can fork. A found of
[list of Octopress sites](https://github.com/imathis/octopress/wiki/Octopress-Sites)
and from that choose Jason Fox's site [NeverStopBuilding](http://neverstopbuilding.net/)
as a good foundation. Many thanks to Jason for allowing me to fork his repo!

Some nice features of Octopress:

- The code for the entire site is on you computer, so you can generate content
offline
- Is written in markdown. Not only is markdown simply awesome, it allows for
  easy transfer of material from analyses in R to your blog. This seems like a
  big positive for a science blogger.
- Ability to write code with syntax highlighting.

Jason's site also makes use of a couple of other modern web tools.
[Fontawesome](http://fortawesome.github.io/Font-Awesome/) is a set of scalable
vector icons that can instantly be customized. [Zurb
foundation](http://foundation.zurb.com/) is a front-end framework that allows
you to make responsive websites. Responsive websites adjust well on devices of
different sizes. Octopress is also responsive, but zurb also offers some other
features, like the sticky menu used on my title page, and a Flexible Grid for
fancy text layout (a responsive alternative to a table).

My new site is hosted on github, so you can see the source code
[here](https://github.com/dfalster/dfalster.github.io/tree/source).

# Design considerations

When thinking about design, I made a list of some websites that I liked and used
these as sources of inspiration. These include sites of [Steven Hamblin](http://winawer.org/),
[Timothee Poisot](http://timotheepoisot.fr/),
[Roger Montgomery](http://rogermontgomery.com/),
[Mark Tanaka](http://www.emi.unsw.edu.au/~tanakalab/),
[Mick Follows](http://darwinproject.mit.edu/),
[Ross Mounce](http://rossmounce.co.uk/), and
[Hilary Mason](http://www.hilarymason.com/).

# Other web essentials

Beyond a website, scientists can benefit from a large number of other tools and
services. Here are some of the ones I now use, with links to my profiles.

* **[Github](https://github.com/dfalster) and
[bitbucket](https://bitbucket.org/dfalster/)**:
to cost and share code.

* **[Twitter](https://twitter.com/adaptive_plant)**: to communicate with other
scientists around the world. Thanks to twitter, I feel more like I am part of a vibrant community, pushing back the front frontier in science!

* **[Google scholar](http://scholar.google.com/citations?user=Ef_nLusAAAAJ&hl=en&oi=sra)**: A great free resource for tracking publications and citations.

* **[Scopus](http://www.scopus.com/author/profile.url?aid=6507695598)**: Another  great resource for tracking publications and
citations, although this one is not free.

* **[Orcid](http://orcid.org/0000-0002-9814-092X)**: Open, non-profit, registry of unique researcher identifiers, linking research activities and outputs to these
  identifiers.

* **[LinkedIn](http://au.linkedin.com/in/danielfalster/)**: I find linked in
quite frustrating, but it seems to have cornered the market in the online CV
world. I started using this for connecting with people outside academia.

* **[Flickr](https://www.flickr.com/96748722@N06/)**: great photo sharing
website.

* **[bit.ly](https://bitly.com/)**: bookmark shortening website. I use this for
posting items on twitter and sending links.

# Outstanding challenges

## Research highlights

I am yet to design a page highlighting my research achievements to date. That's
the next challenge, now that the site is up and working.

## Scheme for sharing slides

I notice that many people now post slides for their talks online. There are several
possible resources, like [slideshare](https://www.slideshare.net/). I have to
think about which will suit me best. Of course, I can just post the items on my
site, the  benefit of these other schemes is that they provide a permanent
record of my talk that can be tracked.

## The ultimate publications list

Currently I am just linking to google scholar for a list of my publications.
Ultimately, I would like to generate my own list, providing links to paper, citations, [altmetrics](http://www.altmetric.com/), media and so forth.

# Acknowledgements
Thanks to Rich FitzJohn for introducing me to Octopress and thereby setting the
 seed for this page, to the creators of Octopress, to Jason Fox at
 [NeverStopBuilding](http://neverstopbuilding.net/) for letting me adopt his theme.

