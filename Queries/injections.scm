(
  (template_content) @injection.content
  (#set! injection.language "html")
  (#set! injection.combined)
  (#set! injection.reset "true")
)

(
  (style_content) @injection.content
  (#set! injection.language "css")
  (#set! injection.combined)
  (#set! injection.reset "true")
)

(
  (js_content) @injection.content
  (#set! injection.language "javascript")
  (#set! injection.combined)
  (#set! injection.reset "true")
)

(
  (json_content) @injection.content
  (#set! injection.language "json")
  (#set! injection.reset "true")
)