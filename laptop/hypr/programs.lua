---------------------
---- MY PROGRAMS ----
---------------------

local apps = {
	terminal = "kitty",
	fileManager = "kitty yazi",
	menu = "rofi -show drun -show-icons -theme ~/.config/rofi/simple-tokyonight.rasi",
	browser = "helium-browser",
	music = "clementine",
	printScreen = "hyprshot -m output -o ~/midia/photos/screenshots",
	printAreaScreen = "hyprshot -m region -o ~/midia/photos/screenshots",
	sound = "pavucontrol",
	clipboard = "kitty --class clipse -e 'clipse'",
	code = "codium",
}

return apps
