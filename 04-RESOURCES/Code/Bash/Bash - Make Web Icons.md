---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Topic/Web
  - Status/Complete
aliases:
  - Make Web Icons
  - Generate Favicons Script
publish: true
permalink:
description: "Bash script for generating apple-touch icons and favicons from a source image."
cssclasses:
  - code
---

# Make Web Icons

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[aaronsnoswell/make-web-icons - GitHub](https://github.com/aaronsnoswell/make-web-icons)*

Script for generating apple-touch icons and favicons for websites from a source image.

## Code

```bash
#!/usr/bin/env bash

# generate apple touch icons
convert "$1" -resize 180x180 apple-touch-icon-180x180.png
convert "$1" -resize 152x152 apple-touch-icon-152x152.png
convert "$1" -resize 144x144 apple-touch-icon-144x144.png
convert "$1" -resize 120x120 apple-touch-icon-120x120.png
convert "$1" -resize 114x114 apple-touch-icon-114x114.png
convert "$1" -resize 76x76 apple-touch-icon-76x76.png
convert "$1" -resize 72x72 apple-touch-icon-72x72.png
convert "$1" -resize 60x60 apple-touch-icon-60x60.png
convert "$1" -resize 57x57 apple-touch-icon-57x57.png

# create default apple touch icon
cp apple-touch-icon-180x180.png apple-touch-icon.png

# generate favicon
convert "$1" -resize 32x32 favicon-32x32.png
convert "$1" -resize 16x16 favicon-16x16.png
convert "$1" -resize 16x16 -resize 32x32 -resize 48x48 favicon.ico

# generate android chrome icons
convert "$1" -resize 192x192 android-chrome-192x192.png
convert "$1" -resize 512x512 android-chrome-512x512.png

# generate ms tile icon
convert "$1" -resize 150x150 mstile-150x150.png
```

## Usage

```bash
chmod +x make-web-icons.sh
./make-web-icons.sh logo.png
```

## Details

> [!WARNING] Requirements
> This script requires ImageMagick for the `convert` command.

Install ImageMagick:

```bash
# ubuntu/debian
sudo apt-get install imagemagick

# macos
brew install imagemagick
```

### Generated Files

| File                      | Size    | Purpose                |
| ------------------------- | ------- | ---------------------- |
| apple-touch-icon-*.png    | Various | iOS home screen icons  |
| favicon.ico               | Multi   | Browser tab icon       |
| android-chrome-*.png      | 192/512 | Android home screen    |
| mstile-150x150.png        | 150x150 | Windows tiles          |

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Make Web Icons]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025


