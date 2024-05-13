require "nvchad.mappings"
-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "i", "v" }, "<A-k>", "V:m '<-2<cr>gv=gv<esc>", { desc = "Move line up" })
map({ "n", "i", "v" }, "<A-j>", "V:m '>+1<cr>gv=gv<esc>", { desc = "Move line down" })
map({ "n", "v" }, "<S-h>", "^", { desc = "Move to front of line" })
map({ "n", "v" }, "<S-l>", "$", { desc = "Move to end of line" })
map({ "n", "v" }, "<", "<gv", { desc = "Move indent left once" })
map({ "n", "v" }, ">", ">gv", { desc = "Move indent left once" })
map({ "n", "v", "t", "x" }, "<A-,>", "<C-w><", { desc = "Move indent left once" })
map({ "n", "v", "t", "x" }, "<A-.>", "<C-w>>", { desc = "Move indent left once" })
map({ "n", "v" }, "<leader>fl", "<cmd>Telescope flutter commands<CR>", { desc = "Move indent left once" })

map({ "n", "v", "i", "t" }, "<C-b>", function()
  require("nvchad.term").runner {
    id = "RunAndBuildTerminal",
    pos = "float",
    cmd = function()
      local file = vim.fn.expand "%"
      local sfile = vim.fn.expand "%:r"
      local ft_cmds = {
        sh = "bash " .. file,
        rust = "cargo " .. file,
        python = "python3 " .. file,
        javascript = "node " .. file,
        java = "javac " .. file .. " && java " .. sfile,
        go = "go build && go run " .. file,
        c = "g++ " .. file .. " -o " .. sfile .. " && ./" .. sfile,
        cpp = "g++ " .. file .. " -o " .. sfile .. " && ./" .. sfile,
        typescript = "deno compile " .. file .. " && deno run " .. file,
      }
      return ft_cmds[vim.bo.ft]
    end,
  }
end, { desc = "Build and Run file" })

-- map({ "n", "v", "i" }, "<C-b>", function()
--   RunCode()
-- end, { desc = "Build and Run file" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
