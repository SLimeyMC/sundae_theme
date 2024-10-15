import html_dsl/types/attribute.{class}
import gleam/option.{None}

// Non token token (NTT)
pub fn indent() {
  class(None, "indent")
}



pub fn keyword() {
    class(None, "keyword token")
}

pub fn literal() {
    class(None, "literal token")
}

pub fn field(mutable: Bool) {
    case mutable {
        True -> class(None, "field mutable token")
        False -> class(None, "field token")
    }
    
}

pub fn static_field(mutable: Bool) {
    case mutable {
        True -> class(None, "static-field mutable token")
        False -> class(None, "static-field token")
    }
}

pub fn class_token() {
    class(None, "class token")
}

pub fn interface() {
    class(None, "interface token")
}

pub fn enum() {
    class(None, "enum token")
}

pub fn enum_entry() {
    class(None, "enum-entry token")
}

pub fn func_decl() {
    class(None, "func-decl token")
}

pub fn param() {
    class(None, "param token")
}

pub fn generic_param() {
    class(None, "generic-param token")
}

pub fn builtin_call() {
    class(None, "builtin token")
}

pub fn func_call() {
    class(None, "func-call token")
}

pub fn static_call() {
    class(None, "static-call token")
}

pub fn annotation() {
    class(None, "annotation token")
}

pub fn annotation_attribute() {
    class(None, "annotation-attribute token")
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