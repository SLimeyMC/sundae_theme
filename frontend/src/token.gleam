import html_dsl/types/attribute.{class}
import gleam/option.{None}

// Non token token (NTT)
pub fn indent() {
  class(None, "indent")
}



pub fn keyword() {
    class(None, "keyword token")
}

pub fn literals() {
    class(None, "literals token")
}

pub fn field() {
    class(None, "field token")
}

pub fn types() {
    class(None, "types token")
}

pub fn builtin() {
    class(None, "builtin token")
}

pub fn call() {
    class(None, "call token")
}

pub fn static_call() {
    class(None, "static-call token")
}

pub fn annotation() {
    class(None, "annotation token")
}

pub fn operator_sign() {
    class(None, "operator-sign token")
}

pub fn comment() {
    class(None, "comment token")
}

pub fn doc_comment() {
    class(None, "doc-comment token")
}

pub fn doc_tag() {
  class(None, "doc-comment doc-tag token")
}

pub fn doc_link() {
    class(None, "doc-comment doc-link token")
}

pub fn string() {
    class(None, "string token")
}