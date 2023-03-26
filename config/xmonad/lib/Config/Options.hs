module Config.Options where

-- Imports --------------------------------------------------------------------
import           XMonad

import           XMonad.Hooks.SetWMName
import           XMonad.Util.SpawnOnce

import           Apps.Alias
import qualified XMonad.Prompt as P
-- Types ------------------------------------------------------------------------
data Options = Options {
  term       :: String
, ffm        :: Bool
, clickfocus :: Bool
, border     :: Dimension
, modkey     :: KeyMask
, spaces     :: [String]
, autoload   :: X ()
}
-- Functions --------------------------------------------------------------------
options :: Options
options = Options {
  term   = myTerminal
, ffm    = False
, clickfocus = False
, border = 0
, modkey   = mod4Mask
, spaces = [ "\xf269", "\xe795", "\xfb8a", "\xf044", "\xf675", "\xfb6e" ]
, autoload = spawnOnce pyWal
  >> spawnOnce setWal
  >> spawnOnce clipboardManager
  >> spawnOnce screenLockImageCacher
  >> spawnOnce myBar -- Temporary fix for polybar service failing to activate
  >> spawnOnce conky
  >> spawnOnce xssproxy
  >> spawnOnce ibusDaemon
}

promptConfig :: P.XPConfig
promptConfig = P.def {
  P.fgColor           = "#f55966"
, P.bgColor           = "#090909"
, P.font              = "Fira Code Mono"
, P.promptBorderWidth = 0
, P.height            = 52
, P.defaultText       = ""
, P.historySize       = 0
, P.maxComplRows      = Just 0
, P.position          = P.Top
}