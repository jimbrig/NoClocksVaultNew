```datacorejsx
// All datacore views should return a React component; in practice, this is going to be
return function View() {
    const pages = dc.useQuery("@page").length;

    return <p>You have {pages} pages in your vault!</p>;
}
```

```datacorejsx
// A list of columns to show in the table.
const COLUMNS = [
    { id: "Name", value: page => page.$link },
    { id: "Rating", value: page => page.value("rating") }
];

return function View() {
    // Selecting `#game` pages, for example.
    const pages = dc.useQuery("@page and #game");

    // Uses the built in table component for showing objects in a table!
    return <dc.Table columns={COLUMNS} rows={pages} />;
}
```

```datacorejsx
return function View() {
  const data = dc.useQuery("#Topic/R and @block");
  return <dc.List type="block" rows={data} renderer={dc.embed} />;
}
```