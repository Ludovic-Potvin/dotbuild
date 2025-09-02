return{
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup{
        defaults = {
          initial_mode = "insert",
          file_ignore_patterns = {"node_modules", ".git/"},
          mappings = {
            i = {
              ["<C-j>"] = require('telescope.actions').move_selection_next,
              ["<C-k>"] = require('telescope.actions').move_selection_previous,
              ["<Esc>"] = require('telescope.actions').close,  -- optional: close with Esc
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- enable fuzzy matching
            override_generic_sorter = true,  -- override default sorter
            override_file_sorter = true,     -- override file sorter
            case_mode = "smart_case",        -- smart case
          }
        }
        }

        -- load fzf extension
        telescope.load_extension("fzf")
    end,
    keys = {
        {
            "<leader>ff",
            require("telescope.builtin").find_files,
            desc = "Find file (Telescope)",
            silent = true,
        },
        {
            "<leader>fg",
            require("telescope.builtin").live_grep,
            desc = "Grep file (Telescope)",
            silent = true,
        },
    }

}
