```dataview
LIST FROM "<% tp.file.folder(true) %>" 
WHERE file.name != "CHANGELOG" AND file.name != this.file.name
```