import XMonad

import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (safeSpawn)
import Control.Monad (forM_, join)

import Config.Default

main :: IO ()
main = do

  -- pipes
  forM_ [".xmonad-workspace-log", ".xmonad-layout-log"] $ \file -> do
    safeSpawn "mkfifo" ["/tmp/" ++ file]

  xmonad $ ewmh $ docks $ myConfig


