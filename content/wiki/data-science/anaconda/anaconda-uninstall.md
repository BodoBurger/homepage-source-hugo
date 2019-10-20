---
title: Uninstalling Anaconda
linktitle: Uninstalling
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  data-science:
    parent: Anaconda
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

- [Documentation](https://docs.anaconda.com/anaconda/install/uninstall/)

For a clean uninstall, first install *anaconda-clean* package,

```
conda install anaconda-clean
anaconda-clean
```

then:

```
rm -rf ~/anaconda3
```
