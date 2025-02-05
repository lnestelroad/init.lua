vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "+", "<C-w>><", { desc = "Increment number" }) -- increment
keymap.set("n", "-", "<C-w><", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- line moving
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves selected line down one" }) -- move line down one
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves selected line up one" }) -- move line down one

-- Cursor centering
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down a half screen and center cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up a half screen and center cursor" })
keymap.set("n", "n", "nzzzv", { desc = "Move and center cursor to next search result" })
keymap.set("n", "N", "Nzzzv", { desc = "Move and center cursor to previous search result" })

-- register remaps
keymap.set("x", "p", [["_dP]], { desc = "which_key_ignore" }) -- remaps the paste command to not yank selected text when pasteing
keymap.set("n", "x", [["_x]], { desc = "which_key_ignore" })

keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Find and replace word under cursor" }
)
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Makes current file executable" })

-- go maps
keymap.set(
	"n",
	"gsj",
	"<cmd>silent !gomodifytags -file % -all -add-tags json -w -quiet <CR>",
	{ desc = "Add json struct tags" }
)
keymap.set(
	"n",
	"gsy",
	"<cmd>silent !gomodifytags -file % -all -add-tags yaml -w -quiet <CR>",
	{ desc = "Add json struct tags" }
)
