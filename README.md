# us_it
A X11 US keyboard layout for italians, explained steb by step

## Fix xkb update on Arch Linux
To fix the following error message:
```
xkeyboard-config: /usr/share/X11/xkb exists in filesystem
```

run the following:
```
sudo mv /usr/share/X11/xkb /usr/share/X11/xkb.bak  # backup the directory  
sudo pacman -Syu
```
Then reinstall using the `install.sh` script.

# Introduction
We italians all know how annoying it is to switch between two layouts just to type accented characters, while the us layout is still more comfortable for coding.

# Documentation
First off, I want to make it clear: I don’t fully understand what’s happening or why it works—but it does. xkb’s documentation is vague and confusing, so I followed this [tutorial](https://rlog.rgtti.com/2014/05/01/how-to-modify-a-keyboard-layout-in-linux/) that roughly outlines the steps.

Since there’s already a tutorial on creating a layout, I won’t explain how I made it—just how to install and use it.

The relevant files are:
* /usr/share/X11/xkb/symbols/us
* /usr/share/X11/xkb/rules/base.lst
* /usr/share/X11/xkb/rules/evdev.lst
* /usr/share/X11/xkb/rules/base.xml
* /usr/share/X11/xkb/rules/evdev.xml

To install the new layout, simply replace these files with the ones in the repo.
Then go into your keyboard settings and select the layout:
**US > English (US for Italians)**.

Here’s what the result looks like:
![layout](https://i.imgur.com/iAgPQOF.png)

# Accented Letters
For accents, just hold AltGr and press the corresponding letter. For example:

* à = AltGr + a
* À = AltGr + a (with caps lock on) or AltGr + Shift + a

Same applies to the other vowels.

The only exception is the accented e:

* é = AltGr + e
* è = AltGr + Shift + e

To type uppercase É or È, just turn on caps lock.

# Resources
* Arch wiki: [link](https://wiki.archlinux.org/title/X_keyboard_extension)
