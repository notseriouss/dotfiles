return {
  {
    "saghen/blink.cmp",

    opts = {
      keymap = {
        ["<Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.select_next()
            else
              return cmp.select_next()
            end
          end,
          "snippet_forward",
          "fallback",
        },
      },





      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
    },
  },
}
