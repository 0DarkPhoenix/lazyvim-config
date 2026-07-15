
return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      show_hidden = true,
    })
  end
}