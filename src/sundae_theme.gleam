import gleam/io
import randomkt.{randomkt}
import html_dsl/types/html.{body, h1, html, nav, span, div, br}
import html_dsl/types/html/head.{charset, head, meta, title, style}
import html_dsl/types/attribute.{class, id}
import gleam/option.{None}

pub fn main() {
  html(
   lang: "en",
   head: head()
     |> title("Sundae Theme")
     |> charset("UTF-8")
     |> meta("viewport", "width=device-width, initial-scale=1.0")
     |> meta("description", "A Gleam program that generates HTML.")
     |> style("src/style.css")
     |> head.link("preconnect", "https://fonts.googleapis.com", None)
     |> head.link("preconnect", "https://fonts.gstatic.com", None)
     |> style("https://fonts.googleapis.com/css2?family=Gloria+Hallelujah&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap")
     |> head.end(),

   body: body(
     attributes: id(None, "main-content")
       |> class("bg-black text-white"),
     inner: html.header(
       None,
       html.a("https://slimeymc.github.io", None, "SlimeyAr")
       <> nav(
         class(None, "popup"),
         html.a("#example-code", None, "example")
         <> html.a("#palette", None, "palette")
         <> html.a("#example-code", None, "specification")
         <> html.a("#example-code", None, "implementation")
         <> html.a("#example-code", None, "example")
       )
       <> html.a("https://slimeymc.github.io", None, "Repo")
     )
     <> html.section(
       class(None, "hero"),
       h1(
         None,
         span(attribute.add(None, "style", "--delay: 0;"), "S")
         <> span(attribute.add(None, "style", "--delay: 1;"), "u")
         <> span(attribute.add(None, "style", "--delay: 2;"), "n")
         <> span(attribute.add(None, "style", "--delay: 3;"), "d")
         <> span(attribute.add(None, "style", "--delay: 4;"), "a")
         <> span(attribute.add(None, "style", "--delay: 5;"), "é")
       )
       <> html.h2(None, "A minimally flavored theme to satiate own hunger")
       <> html.p(None, "available in vanilla flavor (<em>for now!</em>)")
     )
     <> html.article(
       id(None, "example-code") |> class("codeground"),
       h1(None, "RandomExample.kt")
       <> html.hr()
       <> randomkt()
     )
     <> br()
     <> html.article(
      None,
      div(
        id(None, "palette") |> class("two-column"),
        div(
          class(None, "palette"),
          div(class(None, "truffle-black palette-card popup"), span(None, "#28282e"))
          <> div(class(None, "plum-purple palette-card popup"), span(None, "#6c5671"))
          <> div(class(None, "almond-beige palette-card popup"), span(None, "#d9c8bf"))
          <> div(class(None, "berry-red palette-card popup"), span(None, "#f98284"))
          
          <> div(class(None, "frost-lavender palette-card popup"), span(None, "#b0a9e4"))
          <> div(class(None, "glacier-capri palette-card popup"), span(None, "#accce4"))
          <> div(class(None, "coconut-aqua palette-card popup"), span(None, "#b3e3da"))
          <> div(class(None, "bubblegum-pink palette-card popup"), span(None, "#feaae4"))
          
          <> div(class(None, "minty-blue palette-card popup"), span(None, "#87a889"))
          <> div(class(None, "matcha-green palette-card popup"), span(None, "#b0eb93"))
          <> div(class(None, "sherbet-lime palette-card popup"), span(None, "#e9f59d"))
          <> div(class(None, "milk-cream palette-card popup"), span(None, "#ffe6c6"))
          
          <> div(class(None, "cocoa-brown palette-card popup"), span(None, "#dea38b"))
          <> div(class(None, "mango-orange palette-card popup"), span(None, "#ffc384"))
          <> div(class(None, "honey-yellow palette-card popup"), span(None, "#fff7a0"))
          <> div(class(None, "frosting-white palette-card popup"), span(None, "#fff7e4"))
        )
      )
     )
   ),
  )
  |> html.force()
  |> html.html_to_string()
}