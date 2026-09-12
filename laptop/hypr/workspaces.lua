--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- for i = 1, 5 do
--   hl.workspace_rule({
--     workspace = tostring(i),
--     monitor = "",
--     persistent = true
--   })
-- end

hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "5", monitor = "DP-2", default = true, persistent = true })

hl.window_rule({
	name = "calendar",
	match = { class = "gsimplecal" },
	float = true,
	move = { 1720, 40 },
})

hl.window_rule({
	name = "clipboard",
	match = { class = "clipse" },
	float = true,
	size = { 300, 500 },
})

hl.window_rule({
	name = "wifi",
	match = { class = "com.network.manager" },
	float = true,
})

hl.window_rule({
	name = "blueman",
	match = { class = "blueman-manager" },
	float = true,
	size = { 500, 500 },
})

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})
