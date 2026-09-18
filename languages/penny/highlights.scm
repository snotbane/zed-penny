(comment) @comment

(null) @constant.builtin

(boolean) @boolean

(number) @number

(escape_sequence) @string.escape

(string_raw) @string

(string_rich) @string.special

(string_rich
  ">" @operator)

(filter
  (string_raw) @string.regex
  "->" @operator
  (string_raw) @string.regex)

(path
  "." @punctuation.delimiter)

(identifier) @variable

(array
  "[" @punctuation.bracket)

(array
  "]" @punctuation.bracket)

(array
  "," @punctuation.delimiter)

(function_call
  (path
    (identifier) @variable @function.call .))

(function_call
  .
  "await" @keyword)

(function_call
  "," @punctuation.delimiter)

(op) @operator

":" @operator

(assignment) @operator

(option
  (default) @constant.builtin)

[
  "ask"
  "await"
  "call"
  "def"
  "elif"
  (stmt_else)
  "exit"
  "if"
  "jump"
  "label"
  "let"
  "match"
  (stmt_pass)
  "print"
  "return"
  "suspend"
  "var"
] @keyword
