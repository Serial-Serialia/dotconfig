hl.env("HYPRLAND_TRACE", "1")
hl.env("HYPRLAND_NO_RT", "1")
hl.env("HYPRLAND_NO_SD_NOTIFY", "1")
hl.env("HYPRLAND_NO_SD_VARS", "1")

hl.env("AQ_TRACE", "1")
--hl.env("AQ_DRM_DEVICES", "")
hl.env("AQ_FORCE_LINEAR_BLIT", "0")
hl.env("AQ_MGPU_NO_EXPLICIT", "1")
hl.env("AQ_NOMODIFIERS", "1")

hl.env("GDK_BACKEND", "wayland")
hl.env("QT_QPA_PLATAFORM", "wayland")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_AUDIO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt5c")

--hl.env("GTK_THEME")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
