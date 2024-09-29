import gleam/io
import randomkt.{randomkt}
import html_dsl/types/html.{body, h1, html, nav, span, div, br}
import html_dsl/types/html/head.{charset, head, meta, title, style}
import html_dsl/types/attribute.{class, id}
import gleam/option.{None}
import palette_swatch.{palette_swatch}


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
     |> style("https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Shantell+Sans:ital,wght@0,300..800;1,300..800&display=swap")
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
       h1(None, "Example.kt")
       <> html.hr()
       <> randomkt()
     )
     <> html.article(
       id(None, "palette"),
       h1(None, "Palette")
       <> div(
         class(None, "two-column"),
         palette_swatch()
      )
     )
     <> html.article(
       id(None, "specification"),
       h1(None, "Specification")
      <> div(
        class(None, "two-column"),
        html.section(
          None,
          ""
        )
      )
     )
   ),
  )
  |> html.force()
  |> html.html_to_string()
}