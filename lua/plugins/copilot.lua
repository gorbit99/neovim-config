local function setup()
  require("copilot").setup({
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<c-l>",
      },
    },
  })
end

return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  cmd = "Copilot",
  config = setup,
}
