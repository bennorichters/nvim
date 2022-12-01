return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  require("luasnip").snippet(
    { trig = "prt" },
    { t("println!(\"{:?}\", );") }
  ),
}
