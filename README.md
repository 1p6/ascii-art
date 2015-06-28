ascii-art
=========
Ascii-art is a dynamic ascii art generator made with coffeescript.

Requirements
------------
* [Coffeescript](http://coffeescript.org/)

Making your own font
--------------------
To make your own font:
* Step 1: Create a coffeescript file under `src/fonts` with the name of your font as it's name.
* Step 2: Structure the file like the default font.(Read the comments.)
* Step 3: Use the fontCreater html page to help create each character.(Read bellow).
* Step 4: (Optionaly) Make a pull request so I can add the font.(Please test your font before you make a pull request though!(See bellow))

Making a character
------------------
* Step 1: Design your character in the textbox. IMPORTANT: Make sure each line is the same width!
  Otherwise the characters following it in a string will look weird.
* Step 2: Click the button.
* Step 3: Put it in your font file.

Testing your font
-----------------
Go to the root directory and run the `cake` command.  Read the options listed.
