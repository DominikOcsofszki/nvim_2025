return {
	"nvim-tree/nvim-tree.lua",
	opts = {
		sync_root_with_cwd = false,
		renderer = {
			group_empty = true,
			add_trailing = true,
			icons = {
				git_placement = "after",
			},
		},
		update_focused_file = {
			enable = true,
		},
		modified = {
			enable = true,
		},
		filters = {
			dotfiles = true,
			-- custom = {
			-- 	"Document.tex.latexmain", "Document.synctex.gz", "__init__.py", "__pycache__",
			-- 	"*.css", "**.spec.ts"
			--
			-- },
			-- exclude = {""},
		},
		live_filter = {
			always_show_folders = false,
		},
	}
}
