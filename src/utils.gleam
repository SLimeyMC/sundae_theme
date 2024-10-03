import html_dsl/types/attribute.{type Attribute, attribute_to_string}
import gleam/option.{type Option}

pub fn bold(
  inner inner: String,
) -> String {
  "<b>" <> inner <> "</b>"
}

pub fn summary(
  attributes attributes: Option(Attribute),
  inner inner: String,
) -> String {
  let att_str = attribute_to_string(attributes)
  "<summary" <> att_str <> ">" <> inner <> "</summary>"
}

pub fn details(
  attributes attributes: Option(Attribute),
  inner inner: String,
) -> String {
  let att_str = attribute_to_string(attributes)
  "<details" <> att_str <> ">" <> inner <> "</details>"
}

pub fn script(
  attributes attributes: Option(Attribute),
  inner inner: String,
) -> String {
  let att_str = attribute_to_string(attributes)
  "<script" <> att_str <> ">" <> inner <> "</script>"
}