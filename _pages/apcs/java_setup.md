---
layout: page
title: AP CS Java Setup
permalink: "/apcs/java_setup/"
description: APCS Java Setup
---

<div class="section listed" markdown="1">

  <p class="section-title">0</p>
  <div class="section" markdown="1">Install a terminal<br><br>
    *Windows*<br>
    Download and install [Git for Windows](https://git-scm.com/download/win). This includes our console, `git bash`.<br><br>
    *OS X*<br>
    Use `Terminal`, which is included in MacOS.
  </div>

  <p class="section-title">1</p>
  <div class="section" markdown="1">
  Install your favorite text editor. [VSCode](https://code.visualstudio.com/), [Sublime](https://www.sublimetext.com/3), and [Atom](https://atom.io/) are good.
  </div>

  <p class="section-title">2</p>
  <div class="section" markdown="1">
  Download [Java SE Development Kit 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) for your operating system.

  You will need to click the `Accept License Agreement` checkbox above the download links before anything will download. You may need to sign up for a free Oracle account.

  <img src="/public/img/accept_license.png" width="100%">
  </div>

  <p class="section-title">3</p>
  <div class="section" markdown="1">
  Run the installer.
  </div>

  <p class="section-title">4</p>
  <div class="section" markdown="1">**Optional**<br>If you want to be able to run your text editor from the command line, like we do in class:

```terminal
$ code .
```
### Windows
Create a text file with the name of the command you want to use (code in this case, and always with no extension) with the following content (the second line is the path to your chosen text editor program):

```
#!/bin/sh
"C:\Program Files (x86)\Microsoft VS Code\Code.exe" $1 &
```


Move the text file into the `C:\Program Files\Git\usr\bin` folder (or `C:\Program Files (x86)\Git\usr\bin` if that's where Git was installed).

Restart `Git Bash` and your command should work.

### Mac
With VScode open press the keys `cmd + shift + p`.

In the box that pops up, type `shell`.

Select the first option: <br>`Shell Command: Install 'code' command in path`<br> by pressing `Enter` or clicking it.

Press `okay`, then type in your user password.

Finally, close and reopen `terminal`.
</div>

  <p class="section-title">5</p>
  <div class="section" markdown="1">**Windows Only**<br>
  Add java to your path.

  **Windows 10**
  <iframe width="560" height="315" src="https://www.youtube.com/embed/tuQu5tSwuZo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

  <hr>
  **Windows 7 or 8**
  <iframe width="560" height="315" src="https://www.youtube.com/embed/SDPMN63vPH4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
  <br>
  </div>

  <hr>
  To test if `java` is working, restart git bash and run:

```
$ javac
```

  You should see info related to `java`, not a `command not found` error.
  <br>
  <br>
  <br>

</div>

