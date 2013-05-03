---
layout: page
title: "Daniel Falster, bio"
date: 2013-04-28 11:53
testimonials:
  - quote: "He is inquisitive and thinks about the whole project, from business issues, to user experience to back-end code. It's an entrepreneurial perspective."
    source: "Shaun Fanning"
    title: "EVP Product Strategy"
  - quote: "He brings his understanding of innovative engineering and integrates it with a keen eye for design, insight into our consumers, and an understanding of the business models that drive our products."
    source: "Andrew Vincent"
    title: "Product Manager"
  - quote: "I can honestly say that in those three months I've learned more relevant & useful things than I did in my 10 years career."
    source: "Ovidiu Tamasan"
    title: "Senior Developer"

problems:
  - "Our legacy product is a mess, but we have to maintain it. There are no tests, and new features are taking longer and longer to release."
  - "We've grown our team massively, but everyone is still doing their own thing. We need consistency with our processes."
  - "How can we figure out if this is the right thing to build, without wasting a lot of development time?"
  - "No one knows exactly what we are building, how can we increase communication within our team?"
  - "Every environment is different, we waste so much time troubleshooting our infrastructure."
  - "Test driven development sounds great, but it won't work here. Our developers are too entrenched and we have deadlines."
services:
  - title: "Training Rock Stars"
    description: "Good coaching is the key to adopting best practices. Allow me to design a training program or help coach your agile or software development team. I specialize in behavior driven development, agile practices, lean UX, and code quality."
    icon: "&#84;"
  - title: "Conceiving Money Makers"
    description: "Working with your team I will help you conceptualize your idea, guide the creation of prototypes and help orchestrate user testing so you know you are on the right track before starting development."
    icon: "&#64;"
---

Some non html text.

{% blockquote Karthik Ram http://www.scfbm.org/content/8/1/7/abstract Source Code for Biology and Medicine 8:7 %}
 Version control systems (VCS), which have long been used to maintain code repositories in the software industry, are now finding new applications in science.
{% endblockquote %}

Using a good version control system, such as git, is probably the most important habit you need for writing nicer code. Below you'll find the nicercode guide to version control using git, written especially for ecologists who haven't used.

22

<div class="row">
  <div class="large-12 columns">
    <h2 class="subheader">My services are designed to provide a high return on investment by delivering repeatable, sound processes for your software project.</h2>
  </div>
</div>
Using a good version control system, such as git, is probably the most important habit you need for writing nicer code

<div class="row">
  <div class="large-12 columns text-center">
    <h1>What keeps you up at night?</h1>
    <p>Below are some things an ideal client might say. If you find yourself stressed out about similar problems, let me know so I can help!</p>
  </div>
</div>

<div class="row">
  {% for item in page.problems limit:3 %}
  <div class="large-4 columns">
    <div class="problem">
      <p>
        <i class="icon-quote-left icon-3x icon-muted pull-left"></i>
        {{item}}
      </p>
    </div>
  </div>
  {% endfor %}
</div>
<div class="row">
  {% for item in page.problems limit:3 offset:3 %}
  <div class="large-4 columns">
    <div class="problem">
    <p>
      <i class="icon-quote-left icon-3x icon-muted pull-left"></i>
      {{item}}
    </p>
  </div>
  </div>
  {% endfor %}
</div>


<div class="row">
  <div class="large-12 columns text-center">
    <h1>Service Offerings</h1>
    <p>Below are just some examples of the type of work I do.</p>
  </div>
</div>
<div class="row">
  {% for item in page.services limit:2 %}
  <div class="large-6 columns">
    <div class="row">
      <div class="large-12 columns text-center">
        <span class="service-icon"><span>{{ item.icon }}</span></span>
        <h3>{{ item.title }}</h3>
      </div>
    </div>
    <div class="row">
      <div class="small-11 small-centered columns text-center">
        <p>{{ item.description }}</p>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
<div class="row">
  {% for item in page.services limit:2 offset:2 %}
<div class="large-6 columns">
    <div class="row">
      <div class="large-12 columns text-center">
        <span class="service-icon"><span>{{ item.icon }}</span></span>
        <h3>{{ item.title }}</h3>
      </div>
    </div>
    <div class="row">
      <div class="small-11 small-centered columns text-center">
        <p>{{ item.description }}</p>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
<div class="row">
  <div class="large-12 columns text-center">
    <h1>Feedback and Recommendations</h1>
  </div>
</div>
<div class="row">
    {% for item in page.testimonials %}
    <div class="large-4 columns">
      <blockquote>
        {{ item.quote }}
        <cite>{{ item.source }}, {{ item.title }}</cite>
      </blockquote>
    </div>
    {% endfor %}
</div>
<div class="row">
  <div class="large-12 columns text-center">
    <h1>Get in Touch</h1>
    <p>I'm certain that I can help your organization with it's software development project. Email me and we can get started!</p>
    <a onClick="_gaq.push(['_trackEvent', 'Links', 'Click', 'Service Contact']);" href="mailto:jasonrobertfox@gmail.com?subject=[nsb]%20Information%20Request" class="large button radius">Get Contacted in 24 Hours or Less</a>
  </div>
</div>
