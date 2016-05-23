import XMonad
import XMonad.Config.Desktop

baseConfig = desktopConfig

main = do
  xmonad $ defaultConfig
    { terminal    = myTerminal
    , modMask     = myModMask
    , borderWidth = myBorderWidth
    }

myTerminal    = "urxvt"
myModMask     = mod4Mask -- Win key or Super_L
myBorderWidth = 3
