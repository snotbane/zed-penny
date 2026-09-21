(text) @text

(text
  .
  [
    "`"
    ">"
  ] @punctuation.special)

(escape_sequence) @string.escape

(pure) @text.literal

(number) @number

(informal) @hint

(expression
  [
    "{"
    "}"
  ] @punctuation.bracket)

(path
  .
  "@" @punctuation.special)

(translation_marker
  [
    "["
    "]"
  ] @punctuation.bracket)

(lang) @constant

(lang_invalid) @text

(tag_start
  [
    "<"
    ">"
  ] @punctuation.bracket)

(tag_start
  "|" @punctuation.delimiter)

(tag_end
  [
    "</"
    ">"
  ] @punctuation.bracket)

(tag_end
  "|" @punctuation.delimiter)

[
  (tag_start)
  (tag_end)
] @tag

(arg
  "=" @punctuation.special)

(arg_value) @variant
