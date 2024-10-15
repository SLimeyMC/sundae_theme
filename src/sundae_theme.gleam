import gleam/io
import randomkt.{randomkt}
import utils.{summary, details}
import html_dsl/types/html.{body, h1, html, nav, span, div, br}
import html_dsl/types/html/head.{charset, head, meta, title, style}
import html_dsl/types/attribute.{class, id, type Attribute}
import gleam/option.{None, type Option}
import palette_swatch.{palette_swatch}
import token.{
  indent, 
  keyword, 
  literal, 
  field, 
  static_field, 
  class_token, 
  interface, 
  enum, 
  enum_entry,
  func_decl, 
  param, 
  generic_param, 
  builtin_call, 
  func_call, 
  static_call, 
  annotation, 
  annotation_attribute,
  operator_sign, 
  comment, 
  doc_comment, 
  doc_tag, 
  doc_link, 
  string
}


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
     |> head.link("preconnect", "https://fonts.gstatic.com", attribute.add(None, "crossorigin", ""))
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
       <> palette_swatch()
     )
     <> html.article(
       id(None, "specification"),
       h1(None, "Specification")
      <> div(
        class(None, ""), // Make this into two column or soemthing
        html.section(
          class(None, "wrappable flex-wrap-anim"),
          specification_card(
            keyword(), "keyword", 
            "For keyword including modifier to stand out from other"
          )
          <> specification_card(
            literal(), "literal", 
            "For number and boolean, use much more softer color to not be overly prominent"
          )
          <> specification_card(
            field(False), "instance field", 
            "Most field of class/struct/types, not too distracting"
          )
          <> specification_card(
            static_field(False), "static field", 
            "For field that is static (doesnt require initialization), bolded to differentiate to generic field"
          )
          <> specification_card(
            class_token(), "class", 
            "For class, struct and types, less aggresive compared to keyword but still stand out"
          )
          <> specification_card(
            interface(), "interface", 
            "For any contract defining class, even less aggresive than class because of their specialized role"
          )
          <> specification_card(
            enum(), "enum", 
            "Used to display Enum, Union and DTO differently than class"
          )
          <> specification_card(
            enum_entry(), "enum entry", 
            "Used to any of it's entry, have similar color to parameter"
          )
          <> specification_card(
            func_decl(), "function declaration", 
            "Declare function/method, set to bold to state that it's declaration"
          )
          <> specification_card(
            param(), "parameter", 
            "Parameter and named arguments, stand out while related to it's method"
          )
          <> specification_card(
            generic_param(), "generic parameter", 
            "Generic parameter and closure variable closely related to literal"
          )
          <> specification_card(
            builtin_call(), "builtin/package call", 
            "Use different color scheme class method to standout"
          )
          <> specification_card(
            func_call(), "function call", 
            "Unlike other call this is in the style of normal because of how abundance it is"
            )
          <> specification_card(
            static_call(), "static/constructor call", 
            "To seperate from other function"
          )
          <> specification_card(
            annotation(), "annotation", 
            "Use green to match with other theme really"
          )
          <> specification_card(
            annotation_attribute(), "annotation attribute", 
            "Doesnt have background so it doesnt stick out too much (although debating this over parameter)"
          )
          <> specification_card(  
            operator_sign(), "operator and braces", 
            "Display operator and braces, I would like to make operator seperate but not for now"
          )
          <> specification_card(
            comment(), "comment", 
            "Have different font than the rest, in more handwritten style to be more friendly"
          )
        )
      )
     )
   ),
  )
  |> html.force()
  |> html.html_to_string()
}

fn specification_card(attr: Option(Attribute), name: String, description: String) {
  details(
    class(None, "specification-card"), 
    summary(
      attr,
      name
    )
    <> html.span(None, description)
  )
}