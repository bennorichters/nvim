; extends

; Identifies lines that start and end with a # symbol. Those lines are used
; as a list of tags (# seperated) in zettelkasten notes. They should not be 
; spell checked.

(paragraph
  (inline) @taglist (#match? @taglist "^#.*#$")
) @nospell

