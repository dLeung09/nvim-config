local mason_status, mason = pcall(require, "mason")
if not mason_status then
  print("Mason not found!")
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  print("Mason-lspconfig not found!")
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  print("Mason null-ls not found!")
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "jedi_language_server",
    "sqlls",
    "lua_ls",
  }
})

mason_null_ls.setup({
  ensure_installed = {
    "stylua",
    "black",
    "flake8",
  }
})



