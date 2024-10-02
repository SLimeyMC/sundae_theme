import utils
import gleam/int
import html_dsl/types/html.{html, span, div}
import html_dsl/types/attribute.{class}
import gleam/option.{None}

pub fn palette_swatch() {
    div(
       class(None, "palette"),
       palette_card("truffle-black", "#28282e", 0)
       <> palette_card("plum-purple", "#6c5671", 1)
       <> palette_card("almond-beige", "#d9c8bf", 2)
       <> palette_card("berry-red", "#f98284", 3)

       <> palette_card("frost-lavender", "#b0a9e4", 4)
       <> palette_card("glacier-capri", "#accce4", 5)
       <> palette_card("coconut-aqua", "#b3e3da", 6)
       <> palette_card("bubblegum-pink", "#feaae4", 7)

       <> palette_card("minty-blue", "#87a889", 8)
       <> palette_card("matcha-green", "#b0eb93", 9)
       <> palette_card("sherbet-lime", "#e9f59d", 10)
       <> palette_card("milk-cream", "#ffe6c6", 11)

       <> palette_card("cocoa-brown", "#dea38b", 12)
       <> palette_card("mango-orange", "#ffc384", 13)
       <> palette_card("honey-yellow", "#fff7a0", 14)
       <> palette_card("frosting-white", "#fff7e4", 15)
    )
}

pub fn palette_card(name: String, hex: String, number: Int) {
    html.button(class(None, name <> " palette-card popup") |> attribute.add("onclick", "displayPaletteDesc(" <> int.to_string(number) <> ");") |> attribute.add("type", "button"), span(None, hex))
}

pub fn palette_description(ordinal: Int) {
    case ordinal {
        0 -> 
            html.h3(None, "Truffle Black")
            <> html.h4(None, "Dark and bold")
            <> html.p(None, "This color is made out of the void, which give way for cradle's of existance")
        _ -> "hihi"
    }
}