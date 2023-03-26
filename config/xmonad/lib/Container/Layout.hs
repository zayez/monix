
module Container.Layout where

import XMonad
import XMonad.Layout
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders (noBorders, smartBorders)
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Reflect

import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog


import XMonad.Layout.LayoutModifier

-- myLayout :: ModifiedLayout Spacing a l
-- myLayout :: l a -> ModifiedLayout Spacing l a
myLayout = smartSpacing 5 $ smartBorders . avoidStruts $
  tiled
  ||| Mirror tiled
  ||| Full
  ||| tabbed shrinkText defaultTheme
  ||| threeCol
--           ||| spiral (4/3)
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = reflectHoriz $ Tall nmaster delta ratio
    threeCol = ThreeCol nmaster delta ratio
    -- The default number of windows in the master pane
    nmaster = 1
    -- Default proportion of screen occupied by master pane
    ratio   = 1/2
    -- Percent of screen to increment by when resizing panes
    delta   = 2/100