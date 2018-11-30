---
layout: page
title: Space Invaders
permalink: "/intro_cs/invaders/"
description: Intro CS Space Invaders
---


### Main Code
```java
Spaceship ship;
Alien[] aliens = new Alien[5];
Rocket rocket;

PImage rocketImg, explosionImg, alienImg, spaceshipImg;

void setup() {
  size(1620, 980);

  rocketImg = loadImage("rocket.jpg");
  explosionImg = loadImage("explosion.jpg");
  alienImg = loadImage("Alien.png")
  spaceshipImg = loadImage("Spaceship.png");

  ship = new Spaceship(760, height - 50, 100, spaceshipImg);

  // create many aliens
  for(int i=0; i < aliens.length; i = i + 1) {
    aliens[i] = new Alien(300 + 100 * i, 100, 400, alienImg);
  }
}

void update() {
  if (rocket != null) {
    rocket.update();

    for (int i=0; i < aliens.length; i = i + 1) {
      rocket.checkCollision(aliens[i]);
    }

  }
}

void draw() {

  update(); // Move things and check for collisions

    
  // actual drawing

  background(0);

  ship.draw();

  for (int i=0; i < aliens.length; i = i + 1) {
    aliens[i].draw();
  }

  // only draw the rocket if it has been created
  if (rocket != null) {
    rocket.draw();
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    ship.moveLeft();
  } else if (keyCode == RIGHT) {
    ship.moveRight();
  } else if (keyCode == 32) { // Spacebar
    rocket = new Rocket(ship, 30, rocketImg, explosionImg);
  }
}
```

### Alien
```java
class Alien {

  public BoundingBox box;
  int speed;
  PImage img;

  Alien(int x, int y, int size, PImage img) {
    box = new BoundingBox(x, y, size, size);
    this.img = img;
    this.speed = 10;
  }

  void draw() {
    image(img, box.x, box.y, box.w, box.h);
  }

  void moveRight() {
    box.x = box.x + speed;
  }

}
```

### Spaceship
```java
class Spaceship {

  public BoundingBox box;
  int speed;
  PImage img;

  Spaceship(int x, int y, int size, PImage img) {
    box = new BoundingBox(x, y, size, size);
    this.speed = 5;
    this.img = img;
  }

  void moveRight() {
    box.x += speed;
  }

  void moveLeft() {
    box.x -= speed;
  }

  void draw() {
    image(img, box.x, box.y, box.w, box.h);
  }

}
```

### Rocket
```java
class Rocket {

  public BoundingBox box;
  int speed;
  PImage rocketImg;
  PImage explosionImg;
  boolean exploded = false;

  Rocket(Spaceship ship, int speed, PImage rImg, PImage eImg) {
      box = new BoundingBox(ship.box.x, ship.box.y, 100, 100);
      this.speed = speed;
      rocketImg = rImg;
      explosionImg = eImg;
  }

  void checkCollision(Alien alien) {
    if (exploded) return;

    if (box.isCollidingWith(alien.box)) {
      exploded = true;
    }
  }

  void update() {
    if (exploded) return;

    box.y -= speed;
  }

  void draw() {
    if (exploded) {
      image(explosionImg, box.x, box.y, box.w, box.h);
    } else {
      image(rocketImg, box.x, box.y, box.w, box.h);
    }
  }


}
```

### BoundingBox
```java
class BoundingBox {
  
  public int x, y, w, h;
  
  BoundingBox(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  // returns whether or not another bounding box is intersecting this one
  boolean isCollidingWith(BoundingBox other) {
    return pointIsInside(other.x, other.y)         || // top left
           pointIsInside(other.x + w, other.y)     || // top right
           pointIsInside(other.x, other.y + h)     || // bottom left
           pointIsInside(other.x + w, other.y + h);   // bottom right
  }
  
  // returns whether or not a given point is inside this bounding box
  private boolean pointIsInside(int px, int py) {
    return px >= x && px <= (x + w) &&
           py >= y && py <= (y + h);
  }
  
}
```








.
