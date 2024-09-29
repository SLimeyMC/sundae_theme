import html_dsl/types/html.{html, span, div}
import html_dsl/types/attribute.{class}
import gleam/option.{None}

pub fn palette_swatch() {
    div(
       class(None, "palette"),
       html.button(class(None, "truffle-black palette-card popup"), span(None, "#28282e"))
       <> html.button(class(None, "plum-purple palette-card popup"), span(None, "#6c5671"))
       <> html.button(class(None, "almond-beige palette-card popup"), span(None, "#d9c8bf"))
       <> html.button(class(None, "berry-red palette-card popup"), span(None, "#f98284"))

       <> html.button(class(None, "frost-lavender palette-card popup"), span(None, "#b0a9e4"))
       <> html.button(class(None, "glacier-capri palette-card popup"), span(None, "#accce4"))
       <> html.button(class(None, "coconut-aqua palette-card popup"), span(None, "#b3e3da"))
       <> html.button(class(None, "bubblegum-pink palette-card popup"), span(None, "#feaae4"))

       <> html.button(class(None, "minty-blue palette-card popup"), span(None, "#87a889"))
       <> html.button(class(None, "matcha-green palette-card popup"), span(None, "#b0eb93"))
       <> html.button(class(None, "sherbet-lime palette-card popup"), span(None, "#e9f59d"))
       <> html.button(class(None, "milk-cream palette-card popup"), span(None, "#ffe6c6"))

       <> html.button(class(None, "cocoa-brown palette-card popup"), span(None, "#dea38b"))
       <> html.button(class(None, "mango-orange palette-card popup"), span(None, "#ffc384"))
       <> html.button(class(None, "honey-yellow palette-card popup"), span(None, "#fff7a0"))
       <> html.button(class(None, "frosting-white palette-card popup"), span(None, "#fff7e4"))
    )
}