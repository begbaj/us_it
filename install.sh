set -e

local SETXKB="no"

case "$1" in
-s)
  SETXKB="yes"
  ;;
esac

echo "making backup of previous lists..."

sudo mv /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us.bak
sudo mv /usr/share/X11/xkb/rules/base.lst /usr/share/X11/xkb/rules/base.lst.bak
sudo mv /usr/share/X11/xkb/rules/evdev.lst /usr/share/X11/xkb/rules/evdev.lst.bak
sudo mv /usr/share/X11/xkb/rules/base.xml /usr/share/X11/xkb/rules/base.xml.bak
sudo mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak

echo "done"
echo "installing new lists"

sudo cp xkb/symbols/us /usr/share/X11/xkb/symbols/us
sudo cp xkb/rules/base.lst /usr/share/X11/xkb/rules/base.lst
sudo cp xkb/rules/evdev.lst /usr/share/X11/xkb/rules/evdev.lst
sudo cp xkb/rules/base.xml /usr/share/X11/xkb/rules/base.xml
sudo cp xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml

echo "done"
echo "changing layout"

if [ $SETXKB = "yes" ]; then
  if [ $(localectl list-x11-keymap-variants us | grep us_it | head -n 1) = "us_it" ]; then
    setxkbmap us us_it
    echo "keyboard successfully set to us_it"
  else
    echo "something went wrong"
    exit 1
  fi
fi
