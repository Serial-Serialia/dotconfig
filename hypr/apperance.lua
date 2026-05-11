hl.config({
	general = {
		border_size = 3,

		gaps_in = 5,
		gaps_out = 5,

		float_gaps = 0,

		gaps_workspaces = 0,

		col = {
			active_border = { colors = { "rgba(f5f3b4ee)", "rgba(e3c689ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
			nogroup_border = { colors = { "rgba(f5f3b4ee)", "rgba(e3c689ee)" }, angle = 45 },
		},

		--nogroup_border_active = "rgba(595959aa)",
		layout = "master",

		no_focus_fallback = false,

		resize_on_border = true,
		extend_border_grab_area = 10,
		hover_icon_on_border = true,

		allow_tearing = false,

		resize_corner = 0,
		modal_parent_blocking = true,
		locale = "en_us",

		snap = {
			enabled = false,
			window_gap = 10,
			monitor_gap = 10,
			border_overlap = false,
			respect_gaps = true,
		},
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 0.95,
		fullscreen_opacity = 1.0,
		dim_modal = true,
		dim_inactive = false,
		dim_strength = 0.5,
		dim_special = 0.2,
		dim_around = 0.4,
		border_part_of_window = false,

		blur = {
			enabled = true,
			size = 3,
			passes = 1,

			ignore_opacity = true,
			new_optimizations = true,
			xray = false,
			noise = 0.0117,
			contrast = 0.8916,
			vibrancy = 0.1696,
			vibrancy_darkness = 0.0,
			special = true,
			popups = false,
			popups_ignorealpha = 0.2,
			input_methods = false,
			input_methods_ignorealpha = 0.2,
		},

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			sharp = false,
			color = "rgba(1a1a1aee)",
			color_inactive = "rgba(0a0a0aee)",
			offset = "0 0",
			scale = 1.0,
		},
	},

	animations = {
		enabled = true,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_scale_notification = true,
		--col.splash = "rgba(ffffffff)",
		font_family = "MonaspiceNe Nerd Font",
		splash_font_family = "",
		force_default_wallpaper = 0,
		vrr = 0,
		mouse_move_enables_dpms = false,
		key_press_enables_dpms = false,
		name_vk_after_proc = true,
		always_follow_on_dnd = true,
		layers_hog_keyboard_focus = true,
		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,
		disable_autoreload = false,
		enable_swallow = false,
		--swallow_regex = ,
		--swallow_exception_regex = ,
		focus_on_activate = false,
		mouse_move_focuses_monitor = false,
		allow_session_lock_restore = false,
		session_lock_xray = false,
		background_color = "rgba(33ccffee)",
		close_special_on_empty = true,
		on_focus_under_fullscreen = 2,
		exit_window_retains_fullscreen = false,
		initial_workspace_tracking = 1,
		middle_click_paste = false,
		render_unfocused_fps = 15,
		disable_xdg_env_checks = false,
		--disable_hyprland_qtutils_check = false,
		lockdead_screen_delay = 1000,
		enable_anr_dialog = true,
		anr_missed_pings = 5,
		size_limits_tiled = false,
		disable_watchdog_warning = false,
	},

	xwayland = {
		enabled = true,
		use_nearest_neighbor = true,
		force_zero_scaling = false,
		create_abstract_socket = false,
	},

	opengl = {
		nvidia_anti_flicker = false,
	},

	render = {
		direct_scanout = 0,
		expand_undersized_textures = true,
		xp_mode = false,
		ctm_animation = 2,
		cm_enabled = true,
		send_content_type = true,
		cm_auto_hdr = 1,
		new_render_scheduling = false,
		non_shader_cm = 3,
		cm_sdr_eotf = 0,
	},

	cursor = {
		invisible = false,
		sync_gsettings_theme = true,
		no_hardware_cursors = 2,
		no_break_fs_vrr = 2,
		min_refresh_rate = 24,
		hotspot_padding = 1,
		inactive_timeout = 1,
		persistent_warps = false,
		warp_on_change_workspace = 1,
		warp_on_toggle_special = 0,
		default_monitor = "",
		zoom_factor = 1.0,
		zoom_rigid = false,
		zoom_detached_camera = true,
		enable_hyprcursor = true,
		hide_on_key_press = false,
		hide_on_touch = false,
		hide_on_tablet = false,
		use_cpu_buffer = true,
		warp_back_after_non_mouse_input = false,
		zoom_disable_aa = false,
	},

	ecosystem = {
		no_update_news = false,
		no_donation_nag = false,
		enforce_permissions = false,
	},

	quirks = {
		prefer_hdr = 0,
	},

	master = {
		allow_small_split = false,
		special_scale_factor = 1,
		mfact = 0.50,
		new_status = "slave",
		new_on_top = true,
		new_on_active = "none",
		orientation = "left",
		slave_count_for_center_master = 2,
		center_master_fallback = "left",
		smart_resizing = true,
		drop_at_cursor = true,
		always_keep_position = false,
	},

	group = {
		auto_group = true,
		insert_after_current = true,
		focus_removed_window = true,
		drag_into_group = 1,
		merge_groups_on_drag = true,
		merge_groups_on_groupbar = true,
		merge_floated_into_tiled_on_groupbar = false,
		group_on_movetoworkspace = false,
		col = {
			border_active = { colors = { "rgba(434582ee)", "rgba(6668aeee)" }, angle = 45 },
			border_inactive = "rgba(595959aa)",
			border_locked_active = "rgba(74b0a1ee)",
			border_locked_inactive = "rgba(595959aa)",
		},
		groupbar = {
			enabled = true,
			font_family = "MonaspiceNe Nerd Font",
			font_size = 12,
			font_weight_active = "normal",
			font_weight_inactive = "normal",
			gradients = false,
			height = 14,
			indicator_gap = 0,
			indicator_height = 3,
			stacked = false,
			priority = 3,
			render_titles = true,
			text_offset = 0,
			scrolling = true,
			rounding = 1,
			rounding_power = 0.2,
			gradient_rounding = 2,
			gradient_rounding_power = 2.0,
			round_only_edges = true,
			gradient_round_only_edges = true,
			text_color = "rgba(434582ee)",
			--text_color_inactive = ,
			--text_color_locked_active = ,
			--text_color_locked_inactive =,
			col = {
				active = "rgba(434582aa)",
				inactive = "rgba(66777700)",
				locked_active = "rgba(74b0a1aa)",
				locked_inactive = "rgba(66775500)",
			},
			gaps_in = 2,
			gaps_out = 2,
			keep_upper_gap = true,
			blur = false,
		},
	},
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
