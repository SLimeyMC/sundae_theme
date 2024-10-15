import utils.{summary, details}
import html_dsl/types/html.{div, br, p, span}
import html_dsl/types/attribute.{class}
import gleam/option.{None}
import token.{
  indent, 
  keyword, 
  literal, 
  field, 
  static_field, 
  class_token, 
  interface, 
  enum, 
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
  <> details(
    class(None, "doc-comment token"),
    summary(None, "...")
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
    <> span(class_token(), "MyClass")
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
      <> span(class_token(), "Int")
      <> " "
      <> span(operator_sign(), "=")
      <> " "
      <> span(literal(), "42")
      <> " "
      <> span(operator_sign(), "+")
      <> " "
      <> span(literal(), "32")
      <> " "
      <> span(static_call(), "shr")
      <> " "
      <> span(literal(), "2")
    )
    <> p(
      None,
      span(keyword(), "var")
      <> " "
      <> span(None, "mutableField")
      <> span(None, ":")
      <> " "
      <> span(class_token(), "String")
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
      <> span(class_token(), "String")
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
      <> span(func_decl(), "myFunction")
      <> span(None, "(")
      <> span(param(), "arg: ")
      <> span(class_token(), "Int")
      <> span(None, ")")
      <> span(None, ":")
      <> " "
      <> span(class_token(), "String")
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
        <> span(literal(), "100")
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
      <> span(class_token(), "MyClass")
      <> " "
      <> span(None, "()")
    )
    <> p(
      None,
      span(builtin_call(), "println")
      <> span(None, "(")
      <> span(None, "instance")
      <> span(None, ".")
      <> span(func_call(), "myFunction")
      <> span(None, "()")
      <> span(None, ")")
    )
    <> p(
      None,
      span(builtin_call(), "println")
      <> span(None, "(")
      <> span(literal(), "true")
      <> span(None, ",")
      <> " "
      <> span(None, "instance")
      <> span(None, ")")
    )
    <> p(
      None,
      span(builtin_call(), "println")
      <> span(None, "(")
      <> span(class_token(), "MyClass")
      <> span(None, ".")
      <> span(static_field(False), "MY_CONSTANT")
      <> span(None, ")")
    )
  )
  <> p(None, span(None, "}"))
}