---
layout: page
title: IntroCS
permalink: "/intro_cs/floats/"
description: Intro CS Floats BraceYourself Computer Science
---

## Floats

### Article

<div class="section" markdown="1">

Read the first part of [this article on the CSS float property](http://alistapart.com/article/css-floats-101). Stop when you get to *Using floats for layout*.

</div>

### Practice

<div class="section" markdown="1">

Next, use floats (plus padding and margin) to make a website showing off interesting flags from around the world.

Every part of a flag that is a solid rectangle, or can be made from a few solid rectangles, should be a simple empty `<div>` element with a `class` that assigns a `height` and `width` using css, like in the article.

<p class="label">HTML</p>
```html
<div class="rectangle"></div>
```

<p class="label">CSS</p>
```css
.rectangle {
  height: 100px;
  width: 200px;
  /* plus other rules to put it in the right place */
}
```

Complicated elements, such as the Canadian maple leaf or the American stars, can be images.

<p class="break"></p>
<p class="section-title callout">Flags to include (in this order)</p>

<div class="rect">
<p class="label">Libya</p>
<img class="flag" src="/public/img/flags/libya.png">
</div>

<div class="rect">
<p class="label">Germany</p>
<img class="flag" src="/public/img/flags/germany.png">
</div>

<div class="rect">
<p class="label">Ireland</p>
<img class="flag" src="/public/img/flags/ireland.png">
</div>

<div class="rect">
<p class="label">Gambia</p>
<img class="flag" src="/public/img/flags/gambia.png">
</div>

<div class="rect">
<p class="label">Sweden</p>
<img class="flag" src="/public/img/flags/sweden.svg">
</div>

<div class="rect">
<p class="label">Canada</p>
<img class="flag" src="/public/img/flags/canada.png">
</div>

<div class="rect">
<p class="label">Maldives</p>
<img class="flag" src="/public/img/flags/maldives.png">
</div>

<div class="rect">
<p class="label">Greece</p>
<img class="flag" src="/public/img/flags/greece.png">
</div>

<div class="rect">
<p class="label">Switzerland</p>
<img class="flag" src="/public/img/flags/switzerland.gif">
</div>

<div class="rect">
<p class="label">America</p>
<img class="flag" src="/public/img/flags/america.png">
</div>

</div>

<hr>

#### Next

<div class="section" markdown="1">

When you've finished the flags, go to [Layout](/intro_cs/layout).

</div>