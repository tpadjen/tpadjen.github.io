---
layout: page
title: AP CS Ruby Setup
permalink: "/apcs/ruby_setup/"
description: APC S Ruby Setup
---

<div class="section listed" markdown="1">

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Download Ruby Installer for Windows version 2.4.1-2 (x86) [here](https://rubyinstaller.org/downloads/).
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Run the installer. When it asks, make sure "Add Ruby to path" (or any similarly phrased option) <strong>is selected</strong>.
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Install your favorite text editor. [Sublime](https://www.sublimetext.com/3), [Atom](https://atom.io/), and [VSCode](https://code.visualstudio.com/) are good.
  </div>

  <p class="section-title">4</p>
  <div class="section" markdown="1">
  Install [Git for Windows](https://git-scm.com/download/win).
  </div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">**Optional**<br>If you want to be able to run your text editor from the command line, like this (for Sublime):

```terminal
$ subl .
```

Create a text file with the name of the command you want to use (subl in this case, and always with no extension) with the following content (the second line is the path to your chosen text editor program):

```
#!/bin/sh
"C:\Program Files\Sublime Text 3\sublime_text.exe" $1 &
```


Copy the text file into the `C:\Program Files\Git\usr\bin` folder (or `C:\Program Files (x86)\Git\usr\bin` if that's where Git was installed).

Restart `Git Bash` and your command should work.
  </div>

</div>

