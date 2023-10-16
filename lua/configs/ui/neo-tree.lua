-- Configuration for neo-tree plugin --
-- See :h neo-tree-setup

local config = {
	close_if_last_window = true,
	popup_border_style = 'rounded',
	enable_git_status = true,
	enable_diagnostics = true,
	use_libuv_file_watcher = true,
	auto_clean_after_session_restore = true,

	window = {
		width = 25
	}
}

return config
