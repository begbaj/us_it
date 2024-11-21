# us_it
A X11 US keyboard layout for italians, explained steb by step

# Introduzione
Poiché la repo é rivolta ad un pubblico italiano, mi concedo, almeno per questa volta, un readme scritto in lingua natia.
Di seguito spiegherò passo passo come ho modificato alcuni file di sistema per ottenere una nuova variante del layout americano in modo da supportare le lettere accentate. Tutti noi sappiamo quanto sia stressante dover tenere due layout per la tastiera solo ed esclusivamente per premere quei tasti accentati.

# Come fare
Inanzitutto, ci tengo a chiarire che non ho capito molto bene cosa stia succedendo e perché stia succedendo quello che succede, ma funziona. La documentazione di xkb é fumosa e confusa, quindi per fare i miei cambiamenti ho seguito un [tutorial](https://rlog.rgtti.com/2014/05/01/how-to-modify-a-keyboard-layout-in-linux/) che spiega più o meno i passaggi da seguire.
Poiché esiste già un tutorial su come crearsi un layout, non spiegherò come ho fatto, ma solo come installarlo e usarlo.

I file interessati sono i seguenti:
* /usr/share/X11/xkb/symbols/us
* /usr/share/X11/xkb/rules/base.lst
* /usr/share/X11/xkb/rules/evdev.lst
* /usr/share/X11/xkb/rules/base.xml
* /usr/share/X11/xkb/rules/evdev.xml

Per installare il nuovo layout basterà sostituire questi file con quelli nella repo.
Dopo di che basterà andare a selezionare il layout dalle impostazioni della tastiera; il layout si chiamerà US > English (US for italians).

Il risultato sarà il seguente:
![layout](https://i.imgur.com/iAgPQOF.png)

# Lettere accentate
Per gli accenti basterà tenere premuto il tasto alt-gr e poi la lettera interessata. Ad esempio:

* à = alt-gr + a
* À = alt-gr + a (con caps lock attivo) oppure alt-gr + shift + a

e cosi per le altre vocali.

L'unica eccezione è la `e accentata`:

* é = alt-gr + e
* è = alt-gr + shift + e

per avere la `é`/`è` in maiuscolo, basterà tenere attivo il capslock.

# Resources
Dopo la creazione del layout ho trovato questo articolo della wiki di arch (la migliore wiki di sempre, a mani basse): [link](https://wiki.archlinux.org/title/X_keyboard_extension)
