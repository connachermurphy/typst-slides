// #let heading_size = 16pt
// #let heading_font = "Futura"
// #let body_font = "Lora"
// // #let body_font = "Linux Libertine"

// #let wp_counter = counter("wp")

#let presentation(
    title: "Title",
    body,
) = {
    set page(paper: "presentation-16-9")
    // handle numbering here or elsewhere?

    title

    body
}

#let slide(
    heading: "Slide heading",
    body,
) = {
    pagebreak()

    [= #heading]
    [#body]
}

// #let education(
//     institution: "Institution",
//     degree: "Degree",
//     date: "Date",
//     body
// ) = {
//     stack(dir: ltr,
//     {
//         [*#institution,* #degree]
//     },
//     {
//         set align(right)
//         date
//     }
//     )
// }

// set document(author: name, title: "CV Title Placeholder")

// set text(font: body_font, lang: "en", size: 12pt)

// show heading.where(level: 1): it => {
//     // v(-6pt)
//     text(it, font: heading_font, style: "normal", weight: "regular", size: heading_size)
// }

// align(
//     [#text(name, font: heading_font, style: "normal", weight: "regular", size: heading_size) \
//     #email \
//     Last updated: #date]
//     , center)
// // v(-12pt)
// // line(length: 100%)
// // v(-6pt)
// body


// #let education(
//     institution: "Institution",
//     degree: "Degree",
//     date: "Date",
//     body
// ) = {
//     stack(dir: ltr,
//     {
//         [*#institution,* #degree]
//     },
//     {
//         set align(right)
//         date
//     }
//     )
// }

// #let wp(
//     title: "Paper Title",
//     body
// ) = {
//     locate(loc => {
//         wp_counter.step()

//         let wp_counter_rev = wp_counter.final(loc).at(0) - wp_counter.at(loc).at(0)
//         set enum(start: wp_counter_rev)
//         [+ "#title." #body]
//     })
// }