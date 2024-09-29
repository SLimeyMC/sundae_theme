import html_dsl/types/html.{div, br, p, span}
import html_dsl/types/attribute.{class}
import gleam/option.{None}
import token.{indent, keyword, literals, field, types, builtin, call, static_call, annotation, operator_sign, comment, doc_comment, doc_tag, doc_link, string}

//aaa
pub fn randomkt() {
  p(
    None,
    span(None,"package")
    <> " "
    <> span(None, "com.example")
  )
  <> br()
  <> p(
    None,
    span(keyword(), "import")
    <> " "
    <> span(None, "java.util.")
    <> span(None, "*")
    <> " "
    <> span(comment(), "// Some import stuff")
  )
  <> br()
  <> html.details(
    class(None, "doc-comment token"),
    html.summary(None, "...")
    <> p(None, "/**")
    <> p(None, "&nbsp;* Doc comment here for 'MyClass'")
    <> p(
      None, 
      "&nbsp;* "
      <> span(doc_tag(), "@see")
      <> " "
      <> span(doc_link(), "myFunction")
    )
    <> p(None, "&nbsp;*/")
  )
  <> p(None, span(annotation(), "@Deprecated"))
  <> p(
    None,
    span(keyword(), "class")
    <> " "
    <> span(types(), "MyClass")
    <> " "
    <> "{"
  )
  <> div(
    indent(),
    p(
      None,
      span(keyword(), "val")
      <> " "
      <> span(None, "immutableField")
      <> span(None, ":")
      <> " "
      <> span(types(), "Int")
      <> " "
      <> span(operator_sign(), "=")
      <> " "
      <> span(literals(), "42")
      <> " "
      <> span(operator_sign(), "+")
      <> " "
      <> span(literals(), "32")
      <> " "
      <> span(static_call(), "shr")
      <> " "
      <> span(literals(), "2")
    )
    <> p(
      None,
      span(keyword(), "var")
      <> " "
      <> span(None, "mutableField")
      <> span(None, ":")
      <> " "
      <> span(types(), "String")
      <> " "
      <> span(operator_sign(), "=")
      <> " "
      <> span(string(), "\"Hello\"")
    )
    <> p(
      None,
      span(keyword(), "var")
      <> " "
      <> span(None, "randomColor")
      <> span(None, ":")
      <> " "
      <> span(types(), "String")
      <> " "
      <> span(operator_sign(), "=")
      <> " "
      <> span(
        string(), 
        "\"" 
        <> span(class(None, "white-hint"), "#fffff") 
        <> "\"")
    )
    <> br()
    <> p(
      None,
      span(keyword(), "fun")
      <> " "
      <> span(None, "myFunction")
      <> span(None, "(")
      <> span(None, "arg: ")
      <> span(types(), "Int")
      <> span(None, ")")
      <> span(None, ":")
      <> " "
      <> span(types(), "String")
      <> " "
      <> span(None, "{")
    )
    <> div(
      indent(),
      p(
        None,
        span(keyword(), "val")
        <> " "
        <> span(None, "localVariable")
        <> " "
        <> span(operator_sign(), "=")
        <> " "
        <> span(
          string(), 
          "\"" 
          <> span(class(None, "escape"), "\\\"") 
          <> "World" 
          <> span(class(None, "escape"), "\\\"") 
          <> "\""
        )
      )
      <> p(
        None,
        span(keyword(), "return")
        <> " "
        <> span(
          string(), 
          "\"Hello, "
          <> span(class(None, "template"), "$localVariable")
          <> "!\""
        )
      )
    )
    <> p(None, span(None, "}"))
    <> br()
    <> p(
      None,
      span(keyword(), "companion")
      <> " "
      <> span(keyword(), "object")
      <> " "
      <> span(None, "{")
    )
    <> div(
      indent(),
      p(
        None,
        span(keyword(), "const")
        <> " "
        <> span(None, "MY_CONSTANT")
        <> " "
        <> span(operator_sign(), "=")
        <> " "
        <> span(literals(), "100")
      )
    )
    <> p(None, span(None, "}"))
  )
  <> p(None, span(None, "}"))
  <> br()
  <> p(
    None,
    span(keyword(), "fun")
    <> " "
    <> span(None, "main")
    <> span(None, "()")
    <> " "
    <> span(None, "{")
  )
  <> div(
    indent(),
    p(
      None,
      span(keyword(), "val")
      <> " "
      <> span(None, "instance")
      <> " "
      <> span(None, "=")
      <> " "
      <> span(types(), "MyClass")
      <> " "
      <> span(None, "()")
    )
    <> p(
      None,
      span(builtin(), "println")
      <> span(None, "(")
      <> span(None, "instance")
      <> span(None, ".")
      <> span(call(), "myFunction")
      <> span(None, "()")
      <> span(None, ")")
    )
    <> p(
      None,
      span(builtin(), "println")
      <> span(None, "(")
      <> span(literals(), "true")
      <> span(None, ",")
      <> " "
      <> span(None, "instance")
      <> span(None, ")")
    )
    <> p(
      None,
      span(builtin(), "println")
      <> span(None, "(")
      <> span(None, "MyClass")
      <> span(None, ".")
      <> span(None, "MY_CONSTANT")
      <> span(None, ")")
    )
  )
  <> p(None, span(None, "}"))
}