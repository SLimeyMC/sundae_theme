import html_dsl/types/html.{div, br, p, span}
import html_dsl/types/attribute.{class}
import gleam/option.{None}

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
      span(None, "import")
      <> " "
      <> span(None, "java.util.")
      <> span(None, "*")
    )
    <> br()
    <> p(None, span(comment(), "// A explanation of MyClass"))
    <> p(None, span(annotation(), "@Supress"))
    <> p(
      None,
      span(reserved(), "class")
      <> " "
      <> span(types(), "MyClass")
      <> " "
      <> "{"
    )
    <> div(
      indent(),
      p(
        None,
        span(reserved(), "val")
        <> " "
        <> span(None, "immutableField")
        <> span(None, ":")
        <> " "
        <> span(types(), "Int")
        <> " "
        <> span(operators(), "=")
        <> " "
        <> span(literals(), "42")
        <> " "
        <> span(operators(), "+")
        <> " "
        <> span(literals(), "32")
        <> " "
        <> span(static_call(), "shr")
        <> " "
        <> span(literals(), "2")
      )
      <> p(
        None,
        span(reserved(), "var")
        <> " "
        <> span(None, "mutableField")
        <> span(None, ":")
        <> " "
        <> span(types(), "String")
        <> " "
        <> span(operators(), "=")
        <> " "
        <> span(string(), "\"Hello\"")
      )
      <> p(
        None,
        span(reserved(), "var")
        <> " "
        <> span(None, "randomColor")
        <> span(None, ":")
        <> " "
        <> span(types(), "String")
        <> " "
        <> span(operators(), "=")
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
        span(reserved(), "fun")
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
          span(reserved(), "val")
          <> " "
          <> span(None, "localVariable")
          <> " "
          <> span(operators(), "=")
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
          span(reserved(), "return")
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
        span(reserved(), "companion")
        <> " "
        <> span(reserved(), "object")
        <> " "
        <> span(None, "{")
      )
      <> div(
        indent(),
        p(
          None,
          span(reserved(), "const")
          <> " "
          <> span(None, "MY_CONSTANT")
          <> " "
          <> span(operators(), "=")
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
      span(reserved(), "fun")
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
        span(reserved(), "val")
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

fn indent() {
  class(None, "indent")
}

fn reserved() {
    class(None, "reserved token")
}

fn literals() {
    class(None, "literals token")
}

fn field() {
    class(None, "field token")
}

fn types() {
    class(None, "types token")
}

fn builtin() {
    class(None, "builtin token")
}

fn call() {
    class(None, "call token")
}

fn static_call() {
    class(None, "static-call token")
}

fn annotation() {
    class(None, "annotation token")
}

fn operators() {
    class(None, "operators token")
}

fn comment() {
    class(None, "comment token")
}

fn string() {
    class(None, "string token")
}