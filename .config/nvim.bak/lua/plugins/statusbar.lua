return {
  {
    "famiu/feline.nvim",
    config = function()
      local feline = require("feline")
      local vi_mode = require("feline.providers.vi_mode")

      --
      -- constants
      --
      local LEFT, RIGHT = 1, 2

      local MODE_COLORS = {
        ['NORMAL'] = 'green',
        ['COMMAND'] = 'skyblue',
        ['INSERT'] = 'orange',
        ['REPLACE'] = 'red',
        ['LINES'] = 'violet',
        ['VISUAL'] = 'violet',
        ['OP'] = 'yellow',
        ['BLOCK'] = 'yellow',
        ['V-REPLACE'] = 'yellow',
        ['ENTER'] = 'yellow',
        ['MORE'] = 'yellow',
        ['SELECT'] = 'yellow',
        ['SHELL'] = 'yellow',
        ['TERM'] = 'yellow',
        ['NONE'] = 'yellow',
      }

      local GRUVBOX = {
        fg = '#ebdbb2',
        bg = '#3c3836',
        black = '#3c3836',
        skyblue = '#83a598',
        cyan = '#8ec07c',
        green = '#b8bb26',
        oceanblue = '#076678',
        blue = '#458588',
        magenta = '#d3869b',
        orange = '#d65d0e',
        red = '#fb4934',
        violet = '#b16286',
        white = '#ebdbb2',
        yellow = '#fabd2f',
      }

      --
      -- helpers
      --
      local function get_filename()
        local filename = vim.api.nvim_buf_get_name(0)
        if filename == "" then
          filename = "[no name]"
        end
        return vim.fn.fnamemodify(filename, ":~:.")
      end

      local function get_filetype()
        local filetype = vim.bo.filetype
        if filetype == "" then
          filetype = "[no type]"
        end
        return filetype:lower()
      end

      local function get_line_cursor()
        local cursor_line = vim.api.nvim_win_get_cursor(0)[1]
        return cursor_line
      end

      local function get_line_total()
        return vim.api.nvim_buf_line_count(0)
      end

      local function wrap(str)
        return " " .. str .. " "
      end

      local function wrap_left(str)
        return " " .. str .. " "
      end

      local function wrap_right(str)
        return " " .. str .. " "
      end

      local function wrapped_provider(provider, wrapper)
        return function(component, opts)
          return wrapper(provider(component, opts))
        end
      end

      --
      -- providers
      --
      local function provide_mode()
        return vi_mode.get_vim_mode()
      end

      local function provide_filename()
        return get_filename()
      end

      local function provide_linenumber()
        return get_line_cursor() .. "/" .. get_line_total()
      end

      local function provide_filetype()
        return get_filetype()
      end

      --
      -- components
      --
      local components = {
        active = { {}, {} },
        inactive = { {}, {} },
      }

      table.insert(components.active[LEFT], {
        name = "mode",
        provider = wrapped_provider(provide_mode, wrap),
        right_sep = "slant_right",
        hl = function()
          return {
            fg = "black",
            style = "bold",
            bg = vi_mode.get_mode_color(),
          }
        end,
      })

      table.insert(components.active[LEFT], {
        name = "filename",
        provider = wrapped_provider(provide_filename, wrap_left),
        right_sep = "slant_right",
        hl = {
          bg = "white",
          style = "bold",
          fg = "black",
        },
      })

      table.insert(components.active[RIGHT], {
        name = "filetype",
        provider = wrapped_provider(provide_filetype, wrap_right),
        left_sep = "slant_left",
        hl = {
          bg = "white",
          style = "bold",
          fg = "black",
        },
      })

      table.insert(components.active[RIGHT], {
        name = "linenumber",
        provider = wrapped_provider(provide_linenumber, wrap),
        left_sep = "slant_left",
        hl = {
          bg = "skyblue",
          style = "bold",
          fg = "black",
        },
      })

      table.insert(components.inactive[LEFT], {
        name = "filename_inactive",
        provider = wrapped_provider(provide_filename, wrap),
        right_sep = "slant_right",
        hl = {
          fg = "white",
          style = "bold",
          bg = "bg",
        },
      })

      --
      -- setup feline
      --
      feline.setup({
        theme = GRUVBOX,
        components = components,
        vi_mode_colors = MODE_COLORS,
      })
    end,
  },
}

