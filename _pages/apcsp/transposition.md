---
layout: page
title: APCSP Song Transposition
permalink: "/apcsp/transposition/"
description: APCSP Song Transposition
---

### Chords

A musical `chord` is a group notes played together at the same time. Songs are almost always structured around a sequence of chords, like in the example below from a verse of Stairway to Heaven by Led Zeppelin: 

<hr>

<pre>C          Am7
There’s a feeling I get,
           Am
When I look to the West.
            C           G               Am
And my spirit is crying for leaving.
            C                   Am7
In my thoughts I have seen,
                Am
Rings of smoke through the trees,
                C         G                     Am
And the voices of those who stand looking.</pre>

<hr>

The letters above the lyrics represent the chords being played at that time in the song. Chords can have many names, but they are all based on the names 12 notes of the musical scale (lowercase b means flat, # means sharp - some notes have two names):

##### Musical Scale
<pre> 
         sounds getting higher --->

... A Bb B C Db D Eb E F Gb G Ab ...

<--- sounds getting lower


same scale, but using sharp names:

... A A# B C C# D d# E F F# G G# ...
</pre>

The scale continues on either end with the note pattern repeating.

#### Chord Types

Chords can also have different flavors, that sound mostly similar but with extra notes added/changed to give them different feels.

Here is a list of some common types of chords:

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Symbol Structure</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Major</td>
      <td>X</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Minor</td>
      <td>Xmin or Xm or x</td>
      <td>Amin, Ebm, b</td>
    </tr>
    <tr>
      <td>7th</td>
      <td>X7</td>
      <td>D7, Gbmin7</td>
    </tr>
    <tr>
      <td>Major7th</td>
      <td>Xmaj7 or Xmajor7</td>
      <td>Cmaj7, Amajor7</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Xsus2 or Xsus4</td>
      <td>Csus4, F#sus2</td>
    </tr>
    <tr>
      <td>Added</td>
      <td>Xadd6 or Xadd9</td>
      <td>Cadd9, Bminadd9</td>
    </tr>
  </tbody>
</table>

### Transposition

The distance between `chords` on the scale tells us the relationship those chords have. Two pairs of chords that share the same distance on the scale share a similar sound when heard together. For example, an A chord followed by a D chord has the same "feel" as a D chord followed by a G because both pairs are 5 notes apart. 

Because of this, songs can be converted to a different set of chords but still sound like the same song. This process is called `transposition`. It is useful for changing a song to fit a singer's vocal range, or making it easier to play for certain instruments.

### Challenge

Your job is to write a program that can transpose a song's chords. You will have the song's lyrics and chords as text, and be told how many steps along the scale to shift it. For example, here is the same Led Zeppelin verse transposed down 2 half steps of the scale (each change from note to note is called a half step):

<hr>
<pre>Bb          Gm7
There’s a feeling I get,
           Gm
When I look to the West.
            Bb           F               Gm
And my spirit is crying for leaving.
            Bb                   Gm7
In my thoughts I have seen,
                Fm
Rings of smoke through the trees,
                Bb         F                     Gm
And the voices of those who stand looking.</pre>
<hr>

##### Important details

* The A chords lowered two steps wrap around to the other side of the list to become G chords.
* Only the letter name of the chord is ever changed, never any other part
* The lyrics have not changed

You can find a song's chords for testing by searching on [ultimate guitar tabs](https://tabs.ultimate-guitar.com). After searching, be sure to select a **chord** file, not a **tab** or other option.

### Extra Challenge

Make your program ask for the name of a song and have it download a matching song using Beautiful Soup to be transposed.