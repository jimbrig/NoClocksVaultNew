```dataview
LIST FROM [[<% tp.file.title %>]] 
WHERE file.name != "_README" AND file.name != this.file.name AND file.name != "CHANGELOG"
```