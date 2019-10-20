---
title: USB storage
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

## Mount

`sudo mount -o remount,rw /media/<storage-name>`

## Error: *Can't format USB storage*

I got this fixed by doing the following

Type disks and launch the program,
select the disk or drive you want to format,
press CTRL+F and click format.

After formatting, the disk or drive would be unallocated, therefore you'll have to create a partition by using the plus button on the screen.. Then insert the name you'll like to use as the drive or disk name then click on create. Enjoy....

https://askubuntu.com/questions/769079/cant-format-ubuntu-installation-stick/769094
