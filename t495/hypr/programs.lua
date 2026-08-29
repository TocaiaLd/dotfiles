---------------------
---- MY PROGRAMS ----
---------------------

local apps = {
	terminal = "kitty",
	fileManager = "kitty yazi",
	menu = "rofi -show drun -show-icons -theme ~/.config/rofi/simple-tokyonight.rasi",
	browser = "firefox",
	music = "kitty rmpc",
	code = "code",
	wifi = "wifitui --theme=/home/Wesley/.config/wifitui/theme.toml",
	blu               = "kitty bluetui",
	blu               = "kitty bluetui",
	printScreen       = "hyprshot -m output -o ~/Documents/screenshots",
	printAreaScreen   = "hyprshot -m region -o ~/Documents/screenshots",
	sound             = "pavucontrol",
	clipboard         = "kitty --class clipse -e 'clipse'",
	powerMenu         = "~/.config/waybar/power-menu.sh",
}

return apps
