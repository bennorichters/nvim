return {
  messages = {
    {
      content =
          "You are a secretary skilled in writing minutes. " ..
          "From the notes you receive write a coherent summary.",
      role = "system"
    },
    {
      content = "%s",
      role = "user"
    } }
}

