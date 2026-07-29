# us_it

A English keyboard layout for Italians, based on the US layout.

## 🐧Linux installation

Run `install.sh` to only install layout without setting in.

Run `install.sh -s` to install and set.
Theoretically, it should be all done, if it doesn't, change keyboard layout following the method you prefer.

You can do it with `setxkbmap(1)`:

```bash
setxkbmap us us_it
```

Should be enough (it is already run on the `install.sh`).

## 🪟 Windows installation

You'll find the `.klc` file in the `win` directory, and a zip containing a pre-compiled installer.
After installation, if it doesn't work, **reboot**.

# Introduction

Italians who don't like the IT layout know how annoying it is to switch between two layouts just to type accented characters.

I find the US layout is more comfortable for coding but not for typing in Italian. So I made this layout, which I'm using for years now.

# Documentation

I found Xkb’s documentation vague and confusing, so I followed this [tutorial](https://rlog.rgtti.com/2014/05/01/how-to-modify-a-keyboard-layout-in-linux/) that roughly outlines the steps on how to make a keyboard layout.

Since there’s already a tutorial on creating a layout, I won’t explain how I made it but only how to install and use it.

The relevant files are:

* `/usr/share/X11/xkb/symbols/us`
* `/usr/share/X11/xkb/rules/base.lst`
* `/usr/share/X11/xkb/rules/evdev.lst`
* `/usr/share/X11/xkb/rules/base.xml`
* `/usr/share/X11/xkb/rules/evdev.xml`

To install the new layout, simply replace these files with the ones in the repo.
Then go into your keyboard settings and select the layout:
**US > English (US for Italians)**.

![layout](https://i.imgur.com/iAgPQOF.png)

## Accented Letters

For accents, just hold `AltGr` (left `alt` key) and press the corresponding letter.

* **à** = AltGr + a
* **À** = CapsLock; AltGr + a

Same applies to the other vowels.

Pressing `shift` changes accent:

* **é** = AltGr + e
* **è** = AltGr + Shift + e

# Troubleshooting

## Fix xkb update on Arch Linux

To fix the following error message:

```bash
xkeyboard-config: /usr/share/X11/xkb exists in filesystem
```

run the following:

```bash
sudo mv /usr/share/X11/xkb /usr/share/X11/xkb.bak  # backup the directory  
sudo pacman -Syu
```

Then reinstall using the `install.sh` script.

# Resources

* Arch wiki: [link](https://wiki.archlinux.org/title/X_keyboard_extension)
