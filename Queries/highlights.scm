; Brackets for Liquid expressions
([
  "{{"
  "}}"
  "{{-"
  "-}}"
  "{%"
  "%}"
  "{%-"
  "-%}"
] @liquid.tag.framework)

; Brackets
([
  "]"
  "["
  ")"
  "("
] @liquid.bracket)

; Commas and dots
([
  ","
  "."
] @liquid.comma)

; Core Liquid keywords
([
  "by"
  "case"
  "cycle"
  "decrement"
  "echo"
  "else"
  "elsif"
  "endcase"
  "endfor"
  "endform"
  "endif"
  "endjavascript"
  "endpaginate"
  "endraw"
  "endschema"
  "endstyle"
  "endstylesheet"
  "endtablerow"
  "endunless"
  "for"
  "form"
  "if"
  "increment"
  "javascript"
  "layout"
  "liquid"
  "paginate"
  "raw"
  "schema"
  "section"
  "sections"
  "style"
  "stylesheet"
  "tablerow"
  "unless"
  "when"
  "with"
] @liquid.keyword)

; Construct keywords
([
  "assign"
  "capture"
  "endcapture"
  "include"
  "render"
  "content_for"
  "content_for_additional_checkout_buttons"
  "content_for_header"
  "content_for_index"
  "content_for_layout"
] @liquid.keyword.construct)

; Modifiers
([
  "as"
  "in"
] @liquid.keyword.modifier)

; Operators
([
  "|"
  ":"
  "="
] @liquid.operator)

; Identifiers and values
((identifier) @liquid.identifier)
((string) @liquid.string)
((boolean) @liquid.value.boolean)
((number) @liquid.value.number)

; Predicate operators (e.g., ==, !=)
(predicate operator: _ @liquid.operator)

; Filters
(filter name: (identifier) @liquid.identifier.function)

; Accessors and arguments
(access property: (identifier) @liquid.identifier.property)
(argument key: (identifier) @liquid.identifier.key)
(argument value: (identifier) @liquid.identifier.variable)

; Comments
((comment) @liquid.comment)