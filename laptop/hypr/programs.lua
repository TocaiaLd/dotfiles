---------------------
---- MY PROGRAMS ----
---------------------

local apps = {
	terminal = "kitty",
	fileManager = "kitty yazi",
	menu = "rofi -show drun -show-icons -theme ~/.config/rofi/simple-tokyonight.rasi",
	browser = "brave",
	music = "kitty rmpc",
	wifi = "nmgui",
	blu = "blueman-manager",
	printScreen = "hyprshot -m output -o ~/Documents/screenshots",
	printAreaScreen = "hyprshot -m region -o ~/Documents/screenshots",
	sound = "pavucontrol",
	clipboard = "kitty --class clipse -e 'clipse'",
	powerMenu = "~/.config/waybar/power-menu.sh",
	code = "codium",
}

return apps
