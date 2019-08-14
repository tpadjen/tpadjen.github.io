---
layout: page
title: APCS P Ruby Setup
permalink: "/apcsp/ruby_setup/"
description: APCS P Ruby Setup
---
### Windows
<div class="section listed" markdown="1">

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Download [Ruby Installer for Windows (x86)](https://rubyinstaller.org/downloads/).
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Run the installer. When it asks, make sure "Add Ruby to path" (or any similarly phrased option) <strong>is selected</strong>.
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Install your favorite text editor. [VSCode](https://code.visualstudio.com/), [Sublime](https://www.sublimetext.com/3), and [Atom](https://atom.io/) are good.
  </div>

  <p class="section-title">4</p>
  <div class="section" markdown="1">
  Install [Git for Windows](https://git-scm.com/download/win).
  </div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">**Optional**<br>If you want to be able to run your text editor from the command line, like we do in class:

```terminal
$ code .
```

Create a text file with the name of the command you want to use (code in this case, and always with no extension) with the following content (the second line is the path to your chosen text editor program):

```
#!/bin/sh
"C:\Program Files (x86)\Microsoft VS Code\Code.exe" $1 &
```


Move the text file into the `C:\Program Files\Git\usr\bin` folder (or `C:\Program Files (x86)\Git\usr\bin` if that's where Git was installed).

Restart `Git Bash` and your command should work.
<br>
<br>
  </div>

</div>

### Mac
<div class="section listed" markdown="1">

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Install [VSCode](https://code.visualstudio.com/).
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Setup VSCode to be able to run from `terminal`. With VScode open press the keys `cmd` + `shift + `p'. In the box that pops up, type `shell`. Select the first option `Shell Command: Install 'code' command in path` by pressing `Enter` or clicking it. Press `okay`, then typ in your user password. Finally, close and reopen `terminal`. You should now be able to type `code .` on the commend line to open a folder in VSCode.
  </div>
  <br>
  <br>

</div>