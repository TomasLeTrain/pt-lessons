#import "@preview/slydst:0.1.4": *

// main theme color
#let theme_state = state("theme",
  (
    // main accent color
    title_color : rgb("e93920"),

    // default colors
    bg_color : rgb("1b1817"),
    fg_color : rgb("f0f0f0"),

    dark_fg : rgb("676767"),

    // contrast colors
    contrast_bg_color : rgb("303030"),

    // contrast bool
    contrast : false
  )
)

// themes
#let normal_theme = "./themes/brogrammer.tmTheme"
#let contrast_theme = "./themes/halcyon_contrast.tmTheme"

#let applyTheme(doc) = context {
  let t = theme_state.get()

  set raw(theme: if (t.contrast)
    {contrast_theme} else {normal_theme})

  set page(fill:
  if(t.contrast)
    {t.contrast_bg_color} else {t.bg_color})

  set text(fill: t.fg_color)

  doc
}

// defaults
#show raw: set text(size: 9pt)

// util functions
#let codeBlock(other_content,body) = layout(size => {
  let default-body-size = measure(body)
  let h = size.height - other_content
  let height-scaling-factor = (h / default-body-size.height);
  let width-scaling-factor = (size.width /
    default-body-size.width);
  let scaling-factor = calc.min(height-scaling-factor,width-scaling-factor);

  scale(x: scaling-factor * 100%, y:
    scaling-factor * 100%, origin:
    top+left,reflow:true, body)
})

#let getTheme() = {
  return theme_state.get()
}

#let setCodeSize(size) = {
  show raw: set text(size: size)
}

#let setContrast(contrast) = {
  theme_state.update(state => {
    state.contrast = contrast
    return state
  })
}
