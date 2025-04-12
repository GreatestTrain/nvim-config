local ok, opts = pcall(require, 'options.signup')

return {
  "Dan7h3x/signup.nvim",
  name = "signup",
  branch = "main",
  opts = ok and opts or {}
}
