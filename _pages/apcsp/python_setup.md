---
layout: page
title: AP CS Python Setup
permalink: "/apcs/python_setup/"
description: APC S Python Setup
---


### Windows 

<div class="section listed" markdown="1">

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Download Python version 2.7.x (not version 3!) [here](https://www.python.org/downloads/).
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Run the installer. When it asks, make sure "Add Python to path" (or any similarly phrased option) <strong>is selected</strong>.
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Download and install [Git for Windows](https://git-scm.com/download/win).
  </div>

  <p class="section-title">4</p>
  <div class="section" markdown="1">
  Download and install your favorite text editor. [Sublime](https://www.sublimetext.com/3), [Atom](https://atom.io/), and [VSCode](https://code.visualstudio.com/) are good.
  </div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">**Optional**<br>If you want to be able to run your text editor from the command line, like this (for Sublime):

```terminal
$ subl .
```

Create a text file with the name of the command you want to use (subl in this case, and always with no extension) with the following content (the second line is the path to your chosen text editor program):

```
#!/bin/sh
"C:\Program Files\Sublime Text 3\subl.exe" $1 &
```


Copy the text file into the `C:\Program Files\Git\usr\bin` folder (or `C:\Program Files (x86)\Git\usr\bin` if that's where Git was installed).

Restart `Git Bash` and your command should work.
  </div>

</div>

### OS X

<div class="section listed" markdown="1">

  `Terminal` is the command line program for **OS X**. It is already installed. Python is also already installed.

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Open `Terminal` and type the following command to install the `os x command line tools` (including git).

```terminal
$ xcode-select --install
```
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Download and install your favorite text editor. [Sublime](https://www.sublimetext.com/3), [Atom](https://atom.io/), and [VSCode](https://code.visualstudio.com/) are good.
  </div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">**Optional**<br>Follow these steps ff you want to be able to run your text editor from the command line

  **Sublime**<br>In terminal:

```terminal
$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
```

  **Atom**<br>In terminal:

```terminal
$ ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom
```

  **VSCode**<br>Follow [these directions](https://code.visualstudio.com/docs/setup/mac#_command-line)
  </div>

</div>