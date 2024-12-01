return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    vim.keymap.set("n", "<leader>pv", ":Telescope file_browser<CR>", { noremap = true })
  end,
}