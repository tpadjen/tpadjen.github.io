---
layout: page
title: Video Game Design Today
permalink: "/game_design/today/"
description: MM1 Today's Activity
---

<h2>Activity <span id="date"></span></h2>
<script src="/public/js/today.js"></script>

## Final Game
First individual deliverables due Wednesday. Talk to your team leader for more details.

<!--## Megaman-like Assets

Use Illustrator to create these sprites for a megaman-like game we will work on next week:

* A main character
* Platforms to move and jump on
* At least 2 types of enemies
* A projectile
* Health and energy pickups
* A background

Export the images as <code>png</code> files into a new <code>2d</code> project named <strong>megaman</strong>.

If you have time, start to build a platforming level with your new sprites.
-->

<!-- ## Falling Object Game

Create a **falling object game**. You character will move along the ground on bottom of the screen from side to side, trying to catch objects falling from the sky.

The character only moves left and right, using the keyboard.

The falling objects should all be created before the game starts, placed above the camera's view, and set to `inactive`.

Use several `Invoke` statements in the `GameManager` `Start` function to activate the falling objects at different times. Like this:

##### Inside GameManager
```csharp
// create a place to hold a falling object

[SerializedField]
FallingObjectController fallingObject1;

// create more Serialized Fields for more Falling Objects

void Start() {
  // activate your falling objects at different times
  // use different numbers if you like

  Invoke("activateFallingObject1", 2.5f);
  Invoke("activateFallingObject2", 3.7f);
  Invoke("activateFallingObject3", 4.3f);

  // etc...
}

// turn on the falling object after the given time

public void activateFallingObject1() {
  fallingObject1.gameObject.SetActive(true);
}

// create more functions for the other falling objects
```

<hr>

#### More Details

* The objects will fall naturally if you do not disable the built in gravity.
* There will be two types of falling objects:
  * A `good` one (supposed to be caught)
  * A `bad` one (supposed to be avoided)
* Keep track of the player's score by counting how many falling `good` objects he/she catches.
* Change the sprite of the player for a short time when he/she catches a falling object.
* The level ends if a player accidentally catches a `bad` object. Change the sprite for the player to something appropriate for losing, and display a losing message. Automatically restart the level 6 seconds later.
* Falling objects should be removed from the game when they hit the ground or the player.
* There should be at least 10 falling objects in the final game. You should test the game with a lot fewer, until those work - then add more.
* Add sound effects for important actions
* Add a menu -->


<!--Work on your final game project.-->


<!--

Walk Cycle

### Next

If you finish the walk cycle, create a new animation for one of these situations:

<div class="section" markdown="1">
* Running
* Jumping
* Sneaking
* Idle (what the character does when no buttons are pressed)
* Falling
</div>

It may help to search for drawings online of the poses for your chosen animation.

</div>

<!-- <p class="label">Web Design</p>
<div class="section" markdown="1">
  Complete [Codecademy's HTML & CSS lessons](https://www.codecademy.com/learn/web), or choose another lesson if you have completed that one.
</div>

<p class="label">Illustrator</p>
<div class="section" markdown="1">
  Find an interesting, new, or important [processing tutorial](https://processing.org/tutorials/) to investigate. Create a sketch that uses the ideas in the tutorial creatively.
</div>

<p class="label">Photoshop</p>
<div class="section" markdown="1">
  Find an interesting and new Photoshop effect or technique tutorial using Google. Create an image that uses the ideas in the tutorial creatively.
</div>

<p class="label">Video Editing and Special Effects</p>
<div class="section" markdown="1">
  Create a video review of your current phone. Include its relevant features, positives and negatives, and a recommendation on whether or not other consumers should buy it.
</div>

<p class="label">3D Modeling</p>
<div class="section" markdown="1">
  Create a 3D model of a specific model of car that you like. Add as much detail as possible.
</div> -->