-------------------------------------------------------------------------------
--- Settings
-------------------------------------------------------------------------------
vim.opt.guicursor = ""
vim.opt.number = false
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 4
vim.opt.isfname:append("@-@")
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.showtabline = 2
vim.opt.fillchars = vim.opt.fillchars + "vert:║"
vim.opt.showbreak = "↪  "

vim.cmd.colorscheme("sndark")

local group = vim.api.nvim_create_augroup('user_cmds', {clear = true})

-- Highlight text on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight on yank',
    group = group,
    callback = function()
        vim.highlight.on_yank({higroup = 'Visual', timeout = 100})
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {'help', 'man'},
    group = group,
    command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

-------------------------------------------------------------------------------
--- Remaps
-------------------------------------------------------------------------------
vim.g.mapleader = ' '

-- Line start / end
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^')
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_')

-- Select all
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'gy', '"+y') -- copy
vim.keymap.set({'n', 'x'}, 'gp', '"+p') -- paste

-- Move selection in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor pos with J
vim.keymap.set("n", "J", "mzJ`z")      

-- Keep cursor mid screen when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz") 
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ESC to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n><C-\\><C-n>")

-- Windowing
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wL", "<C-w>L")
vim.keymap.set("n", "<leader>wK", "<C-w>K")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>w+", "<C-w>H")
vim.keymap.set("n", "<leader>w<Tab>", "<C-w><C-w>")
vim.keymap.set("n", "<leader>w/", "<C-w><C-v><C-w><C-w>")
vim.keymap.set("n", "<leader>w-", "<C-w><C-s><C-w><C-w>")

-- Tabs
vim.keymap.set("n", "<leader>ec", ":tabnew<cr>")
vim.keymap.set("n", "<leader>ex", ":tabclose<cr>")
vim.keymap.set("n", "<leader>ep", ":tabp<cr>")
vim.keymap.set("n", "<leader>eh", ":tabp<cr>")
vim.keymap.set("n", "<leader>en", ":tabn<cr>")
vim.keymap.set("n", "<leader>el", ":tabn<cr>")
vim.keymap.set("n", "<leader>cd", ":tcd ")

-- Insert mode quick delete
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', {noremap = true})

-- Buffer handling
vim.keymap.set("n", "<leader>q",  ":x<cr>")
vim.keymap.set("n", "<leader>x", ":q!<cr>")
vim.keymap.set("n", "<leader>s",  ":w!<cr>") 

-- Quick term
vim.keymap.set("n", "<leader>,",  ":ToggleTerm direction=float<cr>") 

-- Set indent
vim.api.nvim_create_user_command("Indent", (function(arg)
    v = tonumber(arg.args)
    vim.opt.tabstop     = v
    vim.opt.softtabstop = v
    vim.opt.shiftwidth  = v
end), {nargs=1})

-- No comments in terminal
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber")

function str_or_else(str, alt)
    return str and str ~= "" and str or alt
end

local BAR_DELIM = "⬥ "

function concat(tab)
    return table.concat(tab, "")
end

-- Tab Line

function custom_tab_line()
    local host = vim.fn.hostname()
    local cwd  = vim.fn.getcwd()
    local line = concat({
        "%#TabLine#",
        " ",
        host,
        "  ", BAR_DELIM, "  ",
        cwd,
        "%=",
    });

    local tab_count = vim.fn.tabpagenr("$")
    for i=1, tab_count do
        local is_current = i == vim.fn.tabpagenr()
        local start_hl = is_current and "%#TabLineSel#" or ""
        local end_hl = is_current and "%#TabLine#" or ""
        local click = "%" .. i .. "T"
        local title = str_or_else(vim.fn.gettabvar(i, "tab_name"), "(new tab)")
        local delim = i < tab_count and " " .. BAR_DELIM .. " " or " "
        line = line .. concat({
            start_hl, click, 
            " " .. i .. " ",
            title, " ", end_hl, delim
        })
    end

    return line
end
vim.go.tabline = "%!v:lua.custom_tab_line()"

function rename_tab()
    local current = vim.t.tab_name or ""
    local new = vim.fn.input({prompt="Rename tab > ", default=current, cancelreturn=current})
    vim.t.tab_name = new
    vim.cmd.redrawtabline()
end
vim.keymap.set("n", "<leader>e,", rename_tab)

-- Status Line
function custom_status_line()
    local win_id = vim.g.statusline_winid
    local is_current = win_id == vim.fn.win_getid()
    local buf_id = vim.fn.winbufnr(win_id)
    local row, col = unpack(vim.api.nvim_win_get_cursor(win_id))

    local loc = string.format("Line %d, Col %d", row, col)

    local buftype = vim.bo[buf_id].buftype
    local name
    if buftype == "terminal" then
        name = "[terminal]"
    else 
        local path = vim.fn.expand(string.format("#%d", buf_id))
        local mod = vim.bo[buf_id].modified and " (modified)" or ""
        local ro = vim.bo[buf_id].readonly and " (read-only)" or ""
        name = str_or_else(path, "[no path]") .. mod .. ro
    end

    local typ = str_or_else(vim.bo[buf_id].filetype, "[no type]")
    local fmt = str_or_else(vim.bo[buf_id].fileformat, "[no format]")
    local enc = str_or_else(vim.opt.fileencoding:get(), "[no encoding]")

    local hi = is_current and "%#StatusLine#" or "%#StatusLineNC#"

    local delim = "  " .. BAR_DELIM .. "  "

    return concat({
        hi,
        " ", name, delim, typ, "%=", fmt, delim, enc, delim, loc, " "
    })
end
vim.o.statusline = "%!v:lua.custom_status_line()"

function quick_term(scope, name)
    local new = false
    if not scope.quick_term or not vim.api.nvim_buf_is_valid(scope.quick_term) then
        scope.quick_term = vim.api.nvim_create_buf(false, true)
        new = true
    end

    local relative_w = 0.8
    local relative_h = 0.85
    local ui = vim.api.nvim_list_uis()[1]
    local w = math.floor(ui.width * relative_w)
    local h = math.floor(ui.height * relative_h)
    local x = (ui.width - w) / 2
    local y = (ui.height - h) / 2 - 1
    
    vim.api.nvim_open_win(scope.quick_term, true, {
        relative = "editor",
        width = w,
        height = h,
        col = x,
        row = y,
        border = "rounded",
        title = string.format(" Quick Terminal (%s) ", name),
        title_pos = "center",
    })

    vim.api.nvim_feedkeys("i", "n", false)

    if new then
        vim.cmd(":term")
        vim.api.nvim_buf_set_keymap(
            scope.quick_term, "n", "<Esc>", ":x<cr>", 
            { nowait = true, noremap = true }
        )
    end
end

vim.keymap.set("n", "<leader>t", (function()
    quick_term(vim.g, "global")
end))

vim.keymap.set("n", "<leader>et", (function()
    local n = vim.fn.tabpagenr()
    quick_term(vim.t, string.format("tab %d", n))
end))

-- Lazy
local lazy = {}

function lazy.install(path)
    if not vim.loop.fs_stat(path) then
        print('Installing lazy.nvim....')
        vim.fn.system({
            'git',
            'clone',
            '--filter=blob:none',
            'https://github.com/folke/lazy.nvim.git',
            '--branch=stable', -- latest stable release
            path,
        })
    end
end

function lazy.setup(plugins)
    if vim.g.plugins_ready then
        return
    end

    -- You can "comment out" the line below after lazy.nvim is installed
    lazy.install(lazy.path)

    vim.opt.rtp:prepend(lazy.path)

    require('lazy').setup(plugins, lazy.opts)
    vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
    {'nvim-telescope/telescope.nvim', branch = '0.1.x'},
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
    {'tpope/vim-eunuch'},
    {"kwkarlwang/bufresize.nvim"},
    {'nvim-lua/plenary.nvim'},
    {"RRethy/base16-nvim"},
})

require("telescope").setup {}
local builtin = require "telescope.builtin"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>T", builtin.colorscheme, {})

-- Bufresize
require("bufresize").setup()
