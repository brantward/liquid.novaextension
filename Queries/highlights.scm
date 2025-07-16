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
  "style"
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

; Predicate operator (e.g., `==`, `!=`)
(predicate operator: _ @liquid.operator)

; Filter function names
(filter name: (identifier) @liquid.identifier.function)

; Comments
((comment) @liquid.comment.block)