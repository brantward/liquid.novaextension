; Delimiters & Tags
([
  "{{" "}}" "{{-" "-}}"
  "{%" "%}" "{%-" "-%}"
] @liquid.tag.framework)

; Brackets
([
  "(" ")" "[" "]"
] @liquid.bracket)

; Operators
([
  "|"
  ":"
  "="
] @liquid.operator)
(predicate operator: _ @liquid.operator)

; Control Flow
([
  (break_statement)
  (continue_statement)
  "cycle"
] @liquid.keyword)

; Variable Controls
([
  "assign"
  "decrement"
  "increment"
] @liquid.keyword.variable)

; Conditional Flow
([
  "case" "when" "endcase"
  "if" "endif"
  "unless" "endunless"
  "else"
  "elsif"
  "for" "endfor"
] @liquid.keyword.condition)

; Modifiers
([
  "as" "in" "by" "with"
] @liquid.keyword.modifier)

; Statement/Tag Constructors
([
  "include"
  "render"
  "layout"
  "section"
  "sections"
  "content_for"
] @liquid.keyword.construct)

; Content
([
  "content_for_additional_checkout_buttons"
  "content_for_header"
  "content_for_index"
  "content_for_layout"
] @liquid.identifier.property)

; Block Tags
([
  "capture" "endcapture"
  "doc" "enddoc"
  "form" "endform"
  "javascript" "endjavascript"
  "paginate" "endpaginate"
  "schema" "endschema"
  "style" "endstyle"
  "stylesheet" "endstylesheet"
  "tablerow" "endtablerow"
] @liquid.keyword)

; Syntax
([
  "liquid"
  "echo"
  "raw" "endraw"
] @liquid.keyword)

; Custom Keywords
(custom_unpaired_statement "custom_keyword" @liquid.keyword)

; Literals
((string) @liquid.string)
((boolean) @liquid.value.boolean)
((number) @liquid.value.number)

; Identifiers
((identifier) @liquid.identifier)
(filter name: (identifier) @liquid.identifier.function)
(access property: (identifier) @liquid.identifier.property)
(argument key: (identifier) @liquid.identifier.key)
(argument value: (identifier) @liquid.identifier.variable)
(render_statement arguments: "," @liquid.identifier.argument)

; Comments
((comment) @liquid.comment)

; LiquidDoc
((doc_statement) @liquid.comment)
((doc_tag) @liquid.identifier.function)
((doc_key) @liquid.identifier.key)
((doc_type) @liquid.identifier.argument)


; Syntax Errors
(ERROR [
  "if"
  "unless"
  "else"
  "elsif"
  "for"
  "case"
  "when"
  "assign"
  "decrement"
  "increment"
  "include"
  "render"
  "layout"
  "section"
  "sections"
  "content_for"
  "comment"
  "capture"
  "doc"
  "form"
  "javascript"
  "paginate"
  "schema"
  "style"
  "stylesheet"
  "tablerow"
  "liquid"
  "echo"
  "raw"
] @liquid.invalid)

