---
title: Basic tweaks and configuration
linktitle: Basic tweaks
toc: true
type: docs
draft: false
menu:
  ubuntu:
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

## Disable middle click paste

https://wiki.ubuntuusers.de/GNOME_Tweak_Tool/

## Disable looking for wifi printer

```bash
/etc/cups/cups-browsed.conf

## Change BrowseRemoteProtocols dnssd cups to
BrowseRemoteProtocols none
```

https://ubuntuforums.org/showthread.php?t=2330752


## Keyboardshortcut Power off

Adding shortcut for *Power off* screen by setting custom shortcut:

```gnome-session-quit --power-off```


## Kein Lock screen nach Suspend

https://www.techgrube.de/tutorials/ubuntu-sperrbildschirm-nach-standby-deaktivieren

"Die gewünschte Einstellung findet man dann unter org -> Gnome -> Desktop -> screensaver. Hier entfernt man einfach bei ubuntu-lock-on-suspend das Häkchen."
