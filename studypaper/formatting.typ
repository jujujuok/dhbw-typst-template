#let conf(
  logo: none,
  title: none,
  subtitle: none,
  authors: (),
  other_info: none,
  date: none,
  doc,
) = {

  set align(center)

  figure(image(logo, width: 50%))

  parbreak()

  text(17pt, title)

  parbreak()

  text(14pt, subtitle)

  parbreak()

  let count = authors.len()
  let ncols = calc.min(count, 3)
  
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #author.affiliation \
      #link("mailto:" + author.email)
    ]),
  )

  parbreak()

  text(14pt, other_info) 

  parbreak()

  text(14pt, date)

  linebreak()

  set align(left)
  doc
}
