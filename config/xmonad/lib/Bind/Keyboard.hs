module Bind.Keyboard
  ( myKeys
  )
where

import XMonad
import XMonad.Actions.Volume
import XMonad.Hooks.ManageDocks
import XMonad.Actions.GroupNavigation
import XMonad.Util.NamedScratchpad
import System.IO
import System.Exit
import XMonad.Actions.CopyWindow

import Apps.Alias
import Apps.Scratchpads

myKeys = [
  -- scratchpads
  ((mod4Mask, xK_F1), scratchBottomTerm)
  , ((0, xK_F1), scratchTopTerm)
  , ((mod4Mask, xK_a), scratchBottomTerm)
  , ((mod4Mask, xK_o), scratchCenterTerm)

  , ((mod4Mask, xK_F4), scratchCode)

  , ((mod4Mask, xK_F9), scratchTodo)
  , ((mod4Mask, xK_F10), scratchNotes)
  , ((mod4Mask, xK_F12), scratchGotop)

  -- POSTMAN / INSOMNIA
  , ((mod4Mask .|. shiftMask, xK_F12), spawn "insomnia --no-sandbox")

  -- players
  , ((mod4Mask, xK_s), scratchCmus)
  , ((mod4Mask, xK_r), scratchSpotify)

  , ((mod4Mask, xK_c), spawn myClipManager)

  -- files
  , ((mod4Mask, xK_e), spawn myFileBrowser)

    -- disable while using scratchpads for these two for now
  -- , ((mod4Mask, xK_F4), spawn myCodeEditor)
  -- , ((mod4Mask, xK_F6), spawn myStreamingMusicPlayer)
  -- , ((mod4Mask, xK_m), spawn myMusicPlayer)

  -- browsers
  , ((mod4Mask, xK_F3), spawn firefoxHome)
  , ((mod4Mask .|. shiftMask, xK_F3), spawn firefoxWork)
  , ((mod4Mask, xK_F8), spawn firefoxPersonal)
  , ((mod4Mask .|. shiftMask, xK_F8), spawn firefoxSurf)
  , ((mod4Mask  .|. mod1Mask, xK_p), spawn firefoxPrivate)
  -- , ((mod4Mask  .|. shiftMask, xK_j), spawn firefoxJunk)


  -- playerctl
  , ((mod4Mask .|. mod1Mask, xK_space), spawn playerPlay)
  , ((mod4Mask, xK_Left), spawn playerPrevious)
  , ((mod4Mask, xK_Right), spawn playerNext)
  , ((mod4Mask, xK_bracketleft), spawn playerSeekBefore)
  , ((mod4Mask, xK_bracketright), spawn playerSeekAhead)

  -- volume controls
  , ((mod4Mask, xK_Page_Down), toggleMute >> return ())
  , ((mod4Mask, xK_Up), raiseVolume 5 >> return ())
  , ((mod4Mask, xK_Down), lowerVolume 5 >> return ())
  , ((mod4Mask .|. shiftMask, xK_Up), raiseVolume 25 >> return())
  , ((mod4Mask .|. shiftMask, xK_Down), lowerVolume 25 >> return())
    -- cmus toggle aaa mode
  , ((mod4Mask, xK_Scroll_Lock), spawn cmusToggleAaaMode)

  -- terminals
  , ((mod4Mask, xK_Return), spawn myTerminal)

  -- launcher
  , ((mod4Mask, xK_d), spawn myLauncher)
  , ((mod4Mask, xK_p), spawn myLauncherMod)


  , ((mod4Mask, xK_m), windows copyToAll) --Pin to all workspaces
  -- , ((mod4Mask, xK_1), windows (copy "1")) --Pin to a workspace
  -- , ((mod4Mask, xK_2), windows (copy "2")) --Pin to all workspaces
  -- , ((mod4Mask, xK_h), windows (copy "2")) --Pin to all workspaces
  , ((mod4Mask, xK_x), kill1) -- remove win
  , ((mod4Mask .|. shiftMask, xK_x), killAllOtherCopies) -- remove window from all but current

  -- screenshot & screencapture
  , ((0, xK_Print), spawn screenshotRegion)
  , ((mod4Mask, xK_Print), spawn screenshotDesktop)
  , ((mod4Mask .|. shiftMask, xK_Print), spawn screenshotDelay)

  , ((mod1Mask, xK_Print), spawn screencapStart)
  , ((mod1Mask .|. shiftMask, xK_Print), spawn screencapStop)

  -- set random wallpaper
  , ((mod4Mask .|. shiftMask, xK_w), spawn setRandomWallpaper)
  , ((mod4Mask .|. shiftMask, xK_f), spawn setRandomScheme)

  -- power managment
  , ((mod4Mask, xK_Pause), spawn lockSession)
  , ((mod4Mask .|. shiftMask, xK_Pause), spawn suspend)
  , ((mod4Mask .|. shiftMask, xK_Home), spawn reboot)
  , ((mod4Mask .|. shiftMask, xK_End), spawn shutdown)

  -- redshift
  , ((mod4Mask, xK_KP_Multiply), spawn redStart)
  , ((mod4Mask, xK_KP_Divide), spawn redStop)


  -- dunst
  , ((controlMask, xK_space), spawn "dunstctl close")
  , ((controlMask .|. shiftMask, xK_space), spawn "dunstctl close-all")
  -- TODO: Configure these actions
  -- , ((controlMask .|. shiftMask, xK_KP_Period), spawn "dunstctl context")
  -- , ((controlMask .|. shiftMask, xK_KP_Period), spawn "dunstctl history-pop")

  -- hide bar
  , ((mod4Mask, xK_b), sendMessage ToggleStruts)

  -- alt+tab behaviour
  , ((mod1Mask, xK_Tab), nextMatch Forward (return True))
  , ((mod1Mask .|. shiftMask, xK_Tab), nextMatch Backward  (return True))
  , ((mod1Mask, xK_Escape), nextMatch History (return True))


  -- xmonad controls
  , ((mod4Mask  .|. shiftMask, xK_BackSpace), io (exitWith ExitSuccess)) -- quit xmonad
  , ((mod4Mask, xK_BackSpace), spawn xmonadRefresh)
  , ((mod4Mask, xK_q), kill) -- close focused window


  , ((mod4Mask, xK_Menu), spawn launcherMenu)

  -- manuals, docs
  -- , ((mod4Mask, xK_Home), spawn docNixOSInstall)
  , ((mod4Mask, xK_Home), spawn showManual)
  , ((mod4Mask, xK_End), spawn docNixOSInstall)

  ]
  where
    scratchBottomTerm = namedScratchpadAction myScratchPads "BottomTerm"
    scratchTopTerm = namedScratchpadAction myScratchPads "TopTerm"
    scratchCenterTerm = namedScratchpadAction myScratchPads "CenterTerm"
    scratchCmus = namedScratchpadAction myScratchPads "cmus"
    scratchGotop = namedScratchpadAction myScratchPads "gotop"
    scratchNotes = namedScratchpadAction myScratchPads "notes"
    scratchTodo = namedScratchpadAction myScratchPads "todo"
    scratchSpotify = namedScratchpadAction myScratchPads "spotify"
    scratchCode = namedScratchpadAction myScratchPads "code"
