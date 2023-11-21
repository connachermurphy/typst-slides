#import "template_slides.typ": *
#import "@preview/tablex:0.0.5": tablex, cellx

#set math.equation(numbering: "(1)")
#set figure.caption(position: top)

#let title = "Sample Slide Deck"
#let title_short = "Murphy (In Progress)"
#let date = "November 20, 2023"
#let author = "Connacher Murphy"

// #let accent_color = blue
// #let accent_color = eastern
#let accent_color = olive

// Don't want to indent if a slide is entirely bullets
// #set enum(indent: 5pt)
// #set enum(indent: 5pt)
// #set list(indent: 5pt)

#show: presentation.with(title, author, date)

#slide(heading: "A standard slide.", title_short: title_short, lab: "first-slide")[
    - An insightful bullet point
    - An even more insightful bullet point
]

#divider(heading: "Divider Slide")

#slide(heading: "Yet another slide" + linkbox("first-slide", fill: accent_color)[back to other slide], title_short: title_short)[
    Lots of insightful content #linkbox("first-slide", fill: accent_color)[back to other slide]

    #stylebox(
        color_bar: accent_color,
        color_fill: accent_color
    )[
        Here is a box I use for theorems and definitions.
    ]
]