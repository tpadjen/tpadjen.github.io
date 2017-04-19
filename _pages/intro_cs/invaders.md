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

PImage rocketImg;
PImage explosionImg;

void setup() {
  size(1620, 980);

  rocketImg = loadImage("rocket.jpg");
  explosionImg = loadImage("explosion.jpg");

  ship = new Spaceship(760, height - 50, 100);

  for(int i=0; i < aliens.length; i = i + 1) {
    aliens[i] = new Alien(300 + 100 * i, 100, 400);
  }
}

void draw() {
  // updating
  if (rocket != null) {
    rocket.update();

    for (int i=0; i < aliens.length; i = i + 1) {
      rocket.checkCollision(aliens[i]);
    }

  }

  // drawing
  background(0);

  ship.draw();

  for (int i=0; i < aliens.length; i = i + 1) {
    aliens[i].draw();
  }

  if (rocket != null) {
    rocket.draw();
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    ship.moveLeft();
  } else if (keyCode == RIGHT) {
    ship.moveRight();
  } else if (keyCode == 32) {
    rocket = new Rocket(ship, 30, rocketImg, explosionImg);
  }
}
```

### Alien
```java
class Alien {

  int x, y, size;
  PImage image;

  Alien(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.image = loadImage("Alien.png");;
  }

  void draw() {
    image(image, x, y, size, size);
  }

  void moveRight() {
    x = x + 10;
  }

  PVector center() {
    PVector p = new PVector();
    p.x = x + size / 2;
    p.y = y + size / 2;
    return p;
  }

}
```

### Spaceship
```java
class Spaceship {

  int x, y, size, speed;
  PImage spaceshipImg;

  Spaceship(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = 5;
    spaceshipImg = loadImage("Spaceship.png");
  }

  void moveRight() {
    x += speed;
  }

  void moveLeft() {
    x -= speed;
  }

  void draw() {
    image(spaceshipImg, x, y, size, size);
  }

}
```

### Rocket
```java
class Rocket {

  int x, y, speed, size;
  PImage rocketImg;
  PImage explosionImg;
  boolean exploded = false;

  Rocket(Spaceship ship, int speed, PImage rImg, PImage eImg) {
      this.x = ship.x;
      this.y = ship.y;
      this.speed = speed;

      size = 100;
      rocketImg = rImg;
      explosionImg = eImg;
  }

  PVector center() {
    PVector p = new PVector();
    p.x = x + size / 2;
    p.y = y + size / 2;
    return p;
  }

  double distance(PVector a, PVector b) {
    float diff1 = a.x - b.x;
    float diff2 = a.y - b.y;
    float z = diff1*diff1 + diff2*diff2;
    return Math.sqrt(z);
  }

  void checkCollision(Alien alien) {
    PVector alienCenter = alien.center();
    PVector myCenter = center();
    double distance = distance(alienCenter, myCenter);

    if (distance < size / 2 + alien.size / 2) {
      exploded = true;
    }
  }

  void update() {
    y -= speed;
  }

  void draw() {
    if (exploded) {
      image(explosionImg, x, y, size, size);
    } else {
      image(rocketImg, x, y, size, size);
    }
  }


}
```