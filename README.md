ascii-art
=========
Ascii-art is a dynamic ascii art generator made with coffeescript.

Requirements
------------
* [Coffeescript](http://coffeescript.org/)

How to use
----------
```coffeescript
convert = require 'ascii-art'

str = 'HELLO\nWORLD'
console.log convert str, {font: 'lines'}
###
Output (It looks better in a web page.):
_    _  ______  _      _      _______
| |  | ||  ____|| |    | |    |  ___  |
| |__| || |__   | |    | |    | |   | |
|  __  ||  __|  | |    | |    | |   | |
| |  | || |____ | |___ | |___ | |___| |
|_|  |_||______||_____||_____||_______|
_   _   _  _______  _____  _      _____
| | | | | ||  ___  ||  _  || |    |  __ \
| | | | | || |   | || |_| || |    | |  \ \
| | | | | || |   | ||    _|| |    | |   | |
| |_| |_| || |___| || |\ \ | |___ | |__/ /
|_________||_______||_| \_\|_____||_____/
###
```

Making your own font
--------------------
To make your own font:
* Step 1: Clone the [github repository](https://github.com/1p6/ascii-art/) into you own folder.
* Step 2: Create a coffeescript file under `src/fonts` with the name of your font as it's name.
* Step 3: Structure the file like the [default font](https://github.com/1p6/ascii-art/blob/master/src/fonts/lines.coffee). (Read the comments.)
* Step 4: Use the [fontCreater html page](https://github.com/1p6/ascii-art/blob/master/fontCreater.html) to help create each character.(Read bellow).
* Step 5: (Optionaly) Make a pull request so I can add the font.(Please test your font before you make a pull request though!(See bellow))

Making a character
------------------
* Step 1: Design your character in the textbox. IMPORTANT: Make sure each line is the same width!
  Otherwise the characters following it in a string will look weird.
* Step 2: Click the button.
* Step 3: Put it in your font file.

Testing your font
-----------------
Go to the root directory and run the `cake` command.  Read the options listed.
