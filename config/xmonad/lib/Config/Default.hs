module Config.Default
  ( myConfig
  )
where

import XMonad
import XMonad.Actions.GroupNavigation
import XMonad.Hooks.ManageDocks
import XMonad.Layout
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders (noBorders, smartBorders)
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Reflect

import XMonad.Layout.Grid
import XMonad.Layout.Spiral

import Data.Ratio
import XMonad.Util.EZConfig(additionalKeys)

import XMonad.Layout.Renamed

import Apps.Alias
import Apps.Scratchpads
import Bind.Keyboard
import Config.Options
import Hooks.ManageHook
-- import Hooks.EventHook
import Hooks.PolybarLogHook


myConfig = def {
  manageHook = myManageHook <+> manageHook def
, layoutHook = myLayout
-- , handleEventHook = myHandleEventHook
, logHook = polybarLogHook >> historyHook
, modMask = myModMask
, terminal = myTerminal
, borderWidth = myBorderWidth
, normalBorderColor = myNormalBorderColor
, focusedBorderColor = myFocusedBorderColor
, startupHook = autoload options
-- , workspaces         = myWorkspaces
} `additionalKeys` myKeys

-- myLayout :: X ()
myLayout = smartBorders $ avoidStruts (
    layoutFull |||
    layoutTall |||
    layoutGrid |||
    layoutTabbed
    -- layoutSpiral |||
    -- layoutMirror |||
  )
  where
    layoutFull = renamed [Replace "| |"] $ Full
    layoutTall = renamed [Replace "|T|"] $ smartSpacing 5 $ Tall 1 (3/100) (1/2)
    layoutGrid = renamed [Replace "|=|"] $ smartSpacing 5 $ Grid
    layoutTabbed = renamed [Replace "___"] $ simpleTabbed
    -- layoutSpiral = renamed [Replace "|S|"] $ smartSpacing 5 $  spiral (125 % 146)
    -- layoutMirror = renamed [Replace "|MT|"] $ smartSpacing 5 $ Mirror (Tall 1 (3/100) (3/5))
