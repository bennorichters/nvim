local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local snippets, autosnippets = {}, {} --}}}

local pr1 = s('pr1', {
  t('println!("{:?}", '),
  i(1, 'v1'),
  t(');'),
})

local pr2 = s('pr2', {
  t('println!("{:?}, {:?}", '),
  i(1, 'v1, v2'),
  t(');'),
})

table.insert(snippets, pr1)
table.insert(snippets, pr2)

return snippets, autosnippets
