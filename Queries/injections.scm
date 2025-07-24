(
  (template_content) @injection.content
  (#set! injection.language "html")
  (#set! injection.reset "true")
  (#set! injection.combined)
)

(
  (style_content) @injection.content
  (#set! injection.language "css")
  (#set! injection.reset "true")
  (#set! injection.combined)
)

(
  (js_content) @injection.content
  (#set! injection.language "javascript")
  (#set! injection.reset "true")
  (#set! injection.combined)
)

(
  (json_content) @injection.content
  (#set! injection.language "json")
  (#set! injection.reset "true")
)