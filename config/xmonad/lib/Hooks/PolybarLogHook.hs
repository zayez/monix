module Hooks.PolybarLogHook
  ( polybarLogHook
  )
where

import XMonad
import XMonad.Util.NamedScratchpad
import XMonad.Hooks.DynamicLog

import XMonad.Util.WorkspaceCompare

import Apps.Alias

-- Status bars and logging
wsOutput wsStr = do
  -- home <- io getHomeDirectory
  let path = "/tmp/.xmonad-workspace-log"
  io $ appendFile path (wsStr ++ "\n")

-- current workspace
braceColor = majorAccentColor
leftBrace =  "%{F" ++ braceColor ++ "}[%{F-}"
rightBrace = "%{F-}%{F" ++ braceColor ++ "}]%{F-}"
curWs = "%{F" ++ lightColor ++ "}"

-- workspaces active
activeWsColor = lightColor

-- workspaces with nothing on them
emptyWsColor = darkGrayColor

-- not sure yet
lessBrace = "%{F" ++ urgentColor ++ "}<%{F-}%{F" ++ lightGrayColor ++ "}"
greaterBrace = "%{F-}%{F" ++ urgentColor ++ "}>%{F-}"

-- current layout
curLayoutColor = lightGrayColor

polybarLogHook  :: X ()
polybarLogHook         = dynamicLogWithPP $ def {
  ppCurrent            = wrap (leftBrace ++ curWs) rightBrace
  , ppHidden           = wrap (" %{F" ++ activeWsColor ++ "}") " %{F-}"
  -- , ppHiddenNoWindows  = wrap (" %{F" ++ emptyWsColor ++ "}") " %{F-}"
  , ppUrgent           = wrap (lessBrace) greaterBrace
  , ppSep              = " "
  , ppLayout           = wrap ("%{F" ++ curLayoutColor ++ "}") " %{F-}"
  , ppTitle            = (\str -> "")
  , ppSort             = fmap (filterOutWs [scratchpadWorkspaceTag].) $ ppSort def
  , ppOutput           = wsOutput
}