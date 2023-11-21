// Get short_title into footer without having to pass short_title to #slide

// #let heading_font = "Futura"
// #let body_font = "Lora"
// #let body_font = "Linux Libertine"

#let title_size = 28pt
#let body_size = 20pt
#let foot_size = 12pt

#let presentation(
    title,
    author,
    date,
    body
) = {
    set page(
        paper: "presentation-16-9",
        // margin: 0%,
        margin: (bottom: 15pt, rest: 25pt)
    )

    set text(font: "Verdana")
    
    block(
        width: 100%,
        height: 100%,
        spacing: 0%,
        inset: 10%,
        // fill: teal,
        breakable: false
    )[
        #set align(center + horizon)
        #set text(size: 36pt)
        #title
        
        #set text(size: 16pt)
        #author

        #date
    ]

    counter(page).update(0)

    body
}

#let divider(
    heading: "Divider heading",
) = {
    block(
        width: 100%,
        height: 100%,
        spacing: 0%,
        inset: 10%,
        // fill: teal,
        breakable: false
    )[
        #set align(center + horizon)
        #set text(size: 36pt)
        #heading
    ]
}

#let slide(
    heading: "Slide heading",
    title_short: "Short title",
    lab: "lab",
    body,
) = {
    pagebreak()

    // label(repr([#lab]))

    block(
        width: 100%,
        height: 10%,
        spacing: 0%,
        // inset: 20pt,
        // fill: teal,
        breakable: false
    )[
        // #set align(left + bottom)
        #set align(left + horizon)
        #set text(
            size: title_size,
            fill: olive
        )
        // #label(
        //     repr(lab)
        // )
        
        #heading

        // #let s(x: hello) = { x }
        // #let f() = { s = "abc" }
        // #s()

        #label(lab)
        // Label portion: #label(repr([#lab]))
        // Label portion: #label("a_sample_label")
        // Label portion: #label(lab)
        // #lab => label(lab)
        // #lab => label(lab)
    ]

    block(
        width: 100%,
        height: 75%,
        spacing: 5%,
        // inset: 20pt,
        // fill: gray,
        breakable: false
    )[
        #set text(
            size: body_size,
            fill: luma(25)
        )

        #body
    ]

    block(
        width: 100%,
        height: 5%,
        spacing: 0%,
        // inset: (top: 20pt, bottom: 20pt),
        // fill: green,
        breakable: false
    )[
        #set text(
            size: foot_size,
            fill: luma(25)
        )
        #stack(
            dir: ltr,
            block(width: 90%, height: 100%)[
                #set align(left + horizon)
                #title_short
            ],
            block(width: 10%, height: 100%)[
                #set align(right + horizon)
                #locate(
                    loc => counter(page).at(loc).at(0)
                )
            ],
        )
    ]

    
}

#let linkbox(
    lab,
    fill: maroon,
    color: white,
    outset: 3pt,
    inset: 3pt,
    radius: 5pt,
    body,
) = {
    link(
        label(lab),
    )[
        #box(
            fill: fill,
            outset: outset,
            inset: inset,
            radius: radius,
        )[
            #text(
                fill: color,
                size: 0.75em,
            )[#body]
        ]
    ]
}

#let stylebox(
  color_bar: gray,
  color_fill: gray,
  body
) = {
  block(
    stroke: (left: color_bar + 4pt,),
    fill: color_fill.lighten(80%),
    width: 100%,
    // inset: (left: 10pt, right: 0pt, rest: 4pt,),
    inset: (10pt),
    breakable: true,
  )[
    #body
  ]
}