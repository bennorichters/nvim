local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local snippets, autosnippets = {}, {} --}}}

local p1 = s('p1', {
  t('println!("{}", '),
  i(1, 'v1'),
  t(');'),
})

local p2 = s('p2', {
  t('println!("{}, {}", '),
  i(1, 'v1, v2'),
  t(');'),
})

local p3 = s('p3', {
  t('println!("{}, {}, {}", '),
  i(1, 'v1, v2, v3'),
  t(');'),
})

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

local pr3 = s('pr3', {
  t('println!("{:?}, {:?}, {:?}", '),
  i(1, 'v1, v2, v3'),
  t(');'),
})

table.insert(snippets, p1)
table.insert(snippets, p2)
table.insert(snippets, p3)
table.insert(snippets, pr1)
table.insert(snippets, pr2)
table.insert(snippets, pr3)

return snippets, autosnippets
