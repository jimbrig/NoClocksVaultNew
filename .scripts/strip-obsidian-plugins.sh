#!/bin/bash
# strip-obsidian-plugins.sh
# post-processes exported markdown to remove obsidian plugin-specific blocks
#
# usage: ./strip-obsidian-plugins.sh <directory>
#
# handles:
#   - ```dataview ... ``` blocks
#   - ```dataviewjs ... ``` blocks
#   - ```table-of-contents ... ``` blocks
#   - inline dataview: `$= dv.xxx(...)`

set -euo pipefail

DIR="${1:-.}"

# find all markdown files
find "$DIR" -name "*.md" -type f | while read -r file; do
  # create temp file for processing
  tmp=$(mktemp)

  # use awk to process the file
  awk '
    # track if we are inside a plugin block to skip
    BEGIN { in_block = 0; block_type = "" }

    # detect start of plugin code blocks (dataview, dataviewjs, table-of-contents)
    /^[`]{3,4}(dataview|dataviewjs|table-of-contents)/ {
      in_block = 1
      block_type = "plugin"
      # insert a placeholder comment
      if ($0 ~ /dataview/) {
        print "<!-- dataview query removed for github compatibility -->"
      } else if ($0 ~ /table-of-contents/) {
        print "<!-- table of contents removed for github compatibility -->"
      }
      next
    }

    # detect end of code block
    /^[`]{3,4}$/ {
      if (in_block == 1) {
        in_block = 0
        block_type = ""
        next
      }
    }

    # skip lines inside plugin blocks
    in_block == 1 { next }

    # replace inline dataview queries: `$= dv.xxx(...)` or **`$= dv.xxx(...)`**
    {
      # handle inline dataview with backticks
      gsub(/\*?\*?`\$= dv\.[^`]+`\*?\*?/, "*(dynamic content)*")
      # handle bare inline dataview (less common)
      gsub(/\$= dv\.[a-zA-Z0-9_]+\([^)]*\)(\.[a-zA-Z0-9_]+)*/, "*(dynamic content)*")
      print
    }
  ' "$file" > "$tmp"

  # replace original with processed version
  mv "$tmp" "$file"
done

echo "Stripped Obsidian plugin blocks from $DIR"

