---
title: Installing software
#linktitle:
toc: true
type: docs
draft: false
menu:
  ubuntu:
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

## Software list

- APT
  - chromium-browser
  - TexLive `sudo apt install texlive-full` (4GB)
  - R ([more info]({{< relref "./r-stats.md" >}}))
  - Scribus
  - VLC
- Snap
  - keepassxc
  - gimp
  - go (and hugo)
  - node
  - onlyoffice
  - Octave (Matlab alternative)
- Flatpak
  - libreoffice
  - Epub: Bookworm
- .deb (manually)
  - [Rstudio](https://rstudio.com/products/rstudio/download/)
  - [VS Code](https://code.visualstudio.com/) (.deb package installs apt repo)
  - [Master PDF](https://code-industry.net/free-pdf-editor/)
- .sh
  - Anaconda

### Alarm clock and timer

https://wiki.ubuntuusers.de/Alarm_Clock/

```bash
sudo apt install alarm-clock-applet

sudo apt install sound-icons # folder location: /usr/share/sounds/sound-icons/.
```

### Nvidia drivers

"Software & Updates --> Additional Drivers"

## Package management

- https://book.dpmb.org/debian-paketmanagement.chunked/ch03s02.html
- https://book.dpmb.org/debian-paketmanagement.chunked/ch03s03.html
