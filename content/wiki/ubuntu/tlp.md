---
title: TLP – Linux Advanced Power Management
linktitle: TLP
toc: true
type: docs
draft: false
menu:
  ubuntu:
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

http://thinkwiki.de/TLP_-_Linux_Stromsparen

http://linrunner.de/en/tlp/tlp.html

```bash
sudo apt install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms

# bluetooth off at startup:
gksudo gedit /etc/default/tlp # does not work with WAYLAND

DEVICES_TO_DISABLE_ON_STARTUP="bluetooth"

# Akku-Ladeschwellen vorübergehend auf Maximum setzen
sudo tlp fullcharge [ BAT0 | BAT1 ]

# Akku einmalig bis zur oberen Schwelle laden
sudo tlp chargeonce [ BAT0 | BAT1 ]
```
