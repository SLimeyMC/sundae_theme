import html_dsl/types/html.{html, span, div}
import html_dsl/types/attribute.{class}
import gleam/option.{None}

pub fn palette_swatch() {
    div(
       class(None, "palette"),
       palette_card("truffle-black ", "#28282e")
       <> palette_card("plum-purple ", "#6c5671")
       <> palette_card("almond-beige ", "#d9c8bf")
       <> palette_card("berry-red ", "#f98284")

       <> palette_card("frost-lavender ", "#b0a9e4")
       <> palette_card("glacier-capri ", "#accce4")
       <> palette_card("coconut-aqua ", "#b3e3da")
       <> palette_card("bubblegum-pink ", "#feaae4")

       <> palette_card("minty-blue ", "#87a889")
       <> palette_card("matcha-green ", "#b0eb93")
       <> palette_card("sherbet-lime ", "#e9f59d")
       <> palette_card("milk-cream ", "#ffe6c6")

       <> palette_card("cocoa-brown ", "#dea38b")
       <> palette_card("mango-orange ", "#ffc384")
       <> palette_card("honey-yellow ", "#fff7a0")
       <> palette_card("frosting-white", "#fff7e4")
    )
}

pub fn palette_card(name: String, hex: String) {
    html.button(class(None, name <> "palette-card popup"), span(None, hex))
}