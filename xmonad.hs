import XMonad
import XMonad.Config.Desktop (desktopConfig)
import XMonad.Hooks.EwmhDesktops (fullscreenEventHook)
import XMonad.Layout.NoBorders (smartBorders)

main = xmonad desktopConfig
      { terminal    = "xfce4-terminal"
      , handleEventHook = fullscreenEventHook
      , layoutHook  = smartBorders $ layoutHook desktopConfig
      }
