---
layout: page
title: Video Game Design Walk Cycle
permalink: "/game_design/walk/"
description: Walk Cycle
---

<div class="section" markdown="1">

<p class="figure-title">Walk Cycle</p>
<div class="attributed">
  <a href="http://www.angryanimator.com/tut/pic/002_walkcycle/wlk01.gif"><img class="t-shirt" src="http://www.angryanimator.com/tut/pic/002_walkcycle/wlk01.gif"></a>
  <p class="attribution">Image courtesy <a href="http://www.angryanimator.com/">www.angryanimator.com</a></p>
</div>

Create a `walk cycle` animation for one of your characters.

<div class="section listed" markdown="1">

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Create a new Illustrator file and fill it with **9** square artboards.
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Draw the character once to match the first pose in the walk cycle, `contact`. Place your character in the first artboard. Make sure that your arms and legs have both an upper and lower part that can be rotated separately.
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Copy your character to the second artboard. Make sure to align it so it is in the same position as the original compared to it's artboard.

  Modify the character's pose to match the second image in the walk cycle, `recoil`.

  Notice how the walk cycle character's head and body are a little lower than in the original picture. The human body moves up and down a little while walking, and it is essential to include this to make your animations look realistic.
  </div>

  <p class="section-title">4</p>
  <div class="section" markdown="1">
  Continue copying the last and slightly modifying it to match the newest pose in the walk cycle. When you get to the last one just copy the first image exactly, there is no difference.
  </div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">
  Export all of the artboards as 128x128 px `png` files to one folder.
  </div>

  <p class="section-title">6</p>
  <div class="section" markdown="1">
  Create a new 512x512 px blank Photoshop file for your spritesheet. Set up a 4 x 4 grid system using guides.
  </div>

  <p class="section-title">7</p>
  <div class="section" markdown="1">
  Place each image in your walk cycle in it's own grid cell. Match the walk cycle order left to right, then top to bottom. Save `psd` and export a `png` for Unity.
  </div>

  <p class="section-title">8</p>
  <div class="section" markdown="1">
  Import the spritesheet into Unity. Set it's image mode to `multiple`. Slice the image into a 4x4 grid using the sprite editor.
  </div>

  <p class="section-title">9</p>
  <div class="section" markdown="1">
  Create a new gameobject for the new character. Drag the first image from your spritesheet onto the sprite renderer to make it the image that shows in the editor window for the character.
  </div>

  <p class="section-title">10</p>
  <div class="section" markdown="1">
  Select the character's gameobject, then open the animation window. Create and save new animation for the character named `walk`.
  </div>

  <p class="section-title">11</p>
  <div class="section" markdown="1">
  Select all of the sprites in the spritesheet and drag them onto the new animation. Play the animation and adjust it's speed to your liking.
  </div>

</div>