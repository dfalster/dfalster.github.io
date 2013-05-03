---
layout: default
---

<div id="index-wrapper">
  {% include partials/hero.html %}
  {% include partials/sub-hero.html %}
  <div class="contain-to-grid sticky">
    {% include partials/navbar.html %}
  </div>
  <div class="row">
    <div class="large-12 columns text-center">
      <h1>Evolutionary biologist and ecologist </h1>
      <p>  How do competitive interactions shape the ecology, population dynamics, and traits of species and communities?

        My current research focuses on the role of competition for light in vegetation in shaping:

        - the diversity of growth forms found in different locations,
        - the coordination of different traits across species, and
        - emergent properties, such as leaf area cover and carbon storage.

        I am currently employed as a post-doctoral fellow in Mark Westoby's comparative ecology lab, at Macquarie University.

        Follow these links for contact details, research activity, and publications.</p>
    </div>
</div>

<div class="row">
  <div class="large-12 columns text-center">
    <h1>Recent posts</h1>
  </div>
</div>


<div class="row">
  <section class= "large-12 columns widget">
         {% for post in site.posts limit: 4 %}
        <div class="large-3 small-12 columns center">
          <a class="fade-to-brown" href="{{ root_url }}{{ post.url }}">
            <i class="icon-file-alt icon-3x"></i>
          <p>{{ post.title }}</p>
          </a>
        </div>
        {% endfor %}
  </section>
</div>

</div>