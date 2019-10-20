---
title: PDF
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

## Extracting photos from multiple PDFs using pdfunite and pdfimages

```bash
pdfunite *.pdf allphotos.pdf

pdfimages -j ‘allphotos.pdf’ image
```
