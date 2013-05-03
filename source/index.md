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
    <h1>What keeps you up at night?</h1>
    <p>Below are some things an ideal client might say. If you find yourself stressed out about similar problems, let me know so I can help!</p>
  </div>
</div>

<!--   <div id="posts" class="row">
    <div class="large-12 columns">
      {% assign index = true %}
      {% for post in paginator.posts %}
        {% assign content = post.content %}
        <article class="row">
          <div class="large-12 columns">
            {% include article.html %}
          </div>
        </article>
      {% endfor %}
    </div>
  </div> -->
  <!-- {% include partials/footer.html %} -->
  <!-- {% include after-footer.html %} -->

</div>
