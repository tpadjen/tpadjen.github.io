---
layout: page
title: IntroCS
permalink: "/intro_cs/floats/"
description: Intro CS Floats BraceYourself Computer Science
---

## Floats

### Article

Read the first part of [this article on the CSS float property](http://alistapart.com/article/css-floats-101). Stop when you get to *Using floats for layout*.

### Practice

Next, use floats (plus padding and margin) to make a website showing off interesting flags from around the world.

Every part of a flag that is a solid rectangle, or can be made from a few solid rectangles, should be a simple empty `<div>` element with a `class` that assigns a `height` and `width` using css, like in the article.

<p class="label">HTML</p>
{% highlight html %}
<div class="rectangle"></div>
{% endhighlight %}

<p class="label">CSS</p>
{% highlight css %}
.rectangle {
  height: 100px;
  width: 200px;
  /* plus other rules to put it in the right place */
}
{% endhighlight %}



Complicated elements, such as the Canadian maple leaf or the American stars, can be images.

#### Flags to include (in this order)

1. 
<p class="label">Libya</p>
<img class="flag" src="/public/img/flags/libya.png">
2. 
<p class="label">Germany</p>
<br><img class="flag" src="/public/img/flags/germany.png">
3. 
<p class="label">Ireland</p>
<br><img class="flag" src="/public/img/flags/ireland.png">
4. 
<p class="label">Gambia</p>
<br><img class="flag" src="/public/img/flags/gambia.png">
5. 
<p class="label">Sweden</p>
<br><img class="flag" src="/public/img/flags/sweden.svg">
7. 
<p class="label">Canada</p>
<br><img class="flag" src="/public/img/flags/canada.png">
8. 
<p class="label">Maldives</p>
<br><img class="flag" src="/public/img/flags/maldives.png">
9. 
<p class="label">Greece</p>
<br><img class="flag" src="/public/img/flags/greece.png">
10. 
<p class="label">Switzerland</p>
<br><img class="flag" src="/public/img/flags/switzerland.gif">
11. 
<p class="label">America</p>
<br><img class="flag" src="/public/img/flags/america.png">