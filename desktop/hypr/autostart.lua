-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
   hl.exec_cmd("wayle panel start")
   hl.exec_cmd("hyprpaper")
   hl.exec_cmd("clipse -listen")
   hl.exec_cmd("udiskie -a")
   hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
end)
