---
creation_date: 2024-05-01
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Status/Complete
aliases:
  - Color Utilities
  - Python Color Conversion
description: Python utility functions for color conversions between hex, RGB, and HSL formats
cssclasses:
  - code
---

# Color Utilities

> [!info] Code Properties
> - **Language**: Python
> - **Modules**: `colorsys`
## Overview

> [!SOURCE] Sources:
> - *[futino/scripts/color_utils.py - GitHub](https://github.com/Futino/futino/blob/alpha/scripts/color_utils.py)*

Utility functions for color conversions between hex, RGB, and HSL formats.

## Code

### Conversions

```python
import colorsys

def hex_to_rgb(hex_color):
    """Convert hex color to RGB tuple."""
    hex_color = hex_color.lstrip('#')
    
    if len(hex_color) != 3 and len(hex_color) != 6:
        raise ValueError("Invalid hex color format. Should be 3 or 6 characters.")

    if len(hex_color) == 3:
        hex_color = ''.join([c * 2 for c in hex_color])

    r = int(hex_color[0:2], 16)
    g = int(hex_color[2:4], 16)
    b = int(hex_color[4:6], 16)

    return r, g, b


def rgb_to_hsl(rgb):
    """Convert RGB to HSL."""
    r, g, b = rgb
    r /= 255
    g /= 255
    b /= 255
    h, l, s = colorsys.rgb_to_hls(r, g, b)
    return h, s, l


def hsl_to_255rgb(hsl):
    """Convert HSL to RGB (0-255 range)."""
    h, s, l = hsl
    r, g, b = colorsys.hls_to_rgb(h, l, s)
    return round(r * 255), round(g * 255), round(b * 255)


def hsl_to_rgb(hsl):
    """Convert HSL to RGB (0-1 range)."""
    h, s, l = hsl
    r, g, b = colorsys.hls_to_rgb(h, l, s)
    return r, g, b


def rgb_to_normalized(rgb):
    """Normalize RGB values to 0-1 range."""
    r, g, b = rgb
    return r / 255, g / 255, b / 255
```

### Formatters

```python
def format_css(file_path):
    """Format CSS file to Tailwind standards."""
    with open(file_path, 'r') as file:
        content = file.read()

    content = content.replace('(', '').replace(')', '').replace(',', '')

    with open(file_path, 'w') as file:
        file.write(content)

    print(f'{file_path} has been formatted.')
```

## Usage

```python
# convert hex to RGB
rgb = hex_to_rgb("#3B82F6")
print(rgb)  # (59, 130, 246)

# convert RGB to HSL
hsl = rgb_to_hsl((59, 130, 246))
print(hsl)  # (0.6, 0.92, 0.60)
```

***

## Appendix

*Note created on [2024-05-01](2024-05-01.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [Python Code Index](04-RESOURCES/Code/Python/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Status/WIP
aliases:
  - Python - Color Utilities
publish: true
permalink:
description:
cssclasses:
  - code
---

# Python - Color Utilities

> [!info] Code Properties
> - **Language**: 
> - **Packages**: 
## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

```
# code goes here
```

## Usage

How to use this code:

```
# usage example
```

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [2025-12-31](2025-12-31.md) and last modified on [2025-12-31](2025-12-31.md).*

### See Also

- [Code Index](04-RESOURCES/Code/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
