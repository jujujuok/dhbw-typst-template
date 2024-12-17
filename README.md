# dhbw-typst-template

## Document Structure

- main 
    - general management 
    - meta information
- content -> file where chapters should be imported

## Installation and Usage

- [Install Typst](https://github.com/typst/typst#Installation)
- Install the VS-Code extention *Tinymist Typst*

To use the extention:

- `ctrl + shift + p` --> "Typst Preview: Preview Opened File"

Export as PDF:

- `ctrl + shift + p` --> "Typst: Show exported PDF"

## Formatting

```typst
// Heading
= Heading
== 2nd Level Heading

// Images
#figure(
  image(
    "../path/to/resource.png", 
    width: 50%
    )
)

// Table 
// https://typst.app/docs/reference/model/table/
#table() 

#pagebreak()
```

### Verzeichnisse

```typst
// Inhaltsverzeichnis
#outline(indent: auto, depth: 3)

#outline(target: figure.where(kind: image), title: "Abbildungsverzeichnis")

#outline(target: figure.where(kind: table), title: "Tabellenverzeichnis")

#show outline.where(target: figure.where(kind: table)): it => {
  show outline.entry: set text(red)
  it
}

```
