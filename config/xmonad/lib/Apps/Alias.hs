module Apps.Alias where

import XMonad
import XMonad.Hooks.DynamicLog

-- woskspaces
myWorkspaces = ["1:web","2","3","4:code","5:lib", "6:media"]

-- terminal
myTerminal :: String
-- myTerminal = "termite -t terminal"
myTerminal = "alacritty"

mySecondaryTerminal :: String
mySecondaryTerminal = "urxvt -title secondaryterm"

myPdfReader :: String
myPdfReader = "zathura"

-- defaults
myModMask :: KeyMask
myModMask = mod4Mask

myNet :: String
myNet = "killall nm-applet; nohup nm-applet"

myFileBrowser :: String
myFileBrowser = "nautilus"
-- myFileBrowser = "termite -t ranger -e ranger"

myMusicPlayer :: String
myMusicPlayer = "alacritty -t cmus -e cmus"

myBookLibrary :: String
myBookLibrary = "calibre"

myCodeEditor :: String
myCodeEditor = "code"

myEbookReader :: String
myEbookReader = "ebook-viewer"

myStreamingMusicPlayer :: String
myStreamingMusicPlayer = "spotify"

cmusToggleAaaMode :: String
cmusToggleAaaMode = "cmus-remote -C 'toggle aaa_mode'"

virtManager :: String
virtManager = "virt-manager --connect qemu:///system"

ibusDaemon :: String
ibusDaemon = "ibus-daemon"

-- clipboard manager

myClipManager :: String
myClipManager = "rofi -modi 'clipboard:greenclip print' -show clipboard -run-command '{cmd}'"

xmonadRefresh :: String
xmonadRefresh = "xmonad --recompile && xmonad --restart"

xssproxy = "xssproxy &"
conky = "conky"

-- Color palette: colourlovers.com/palette/4531975/Cyber_Punk
-- colors

majorColor = "#2D2C56"
minorColor = "#72BBFF"
minorAccentColor = "#FAA030"
majorAccentColor = "#FC48AC"

darkColor = "#1C1F28"
grayColor = "#a4a4a4"
lightGrayColor = "#BEB3CD"
darkGrayColor = "#555"
lightColor = "#ffffff"
neutralColor = darkColor

urgentColor = "#8c414f"

myBorderWidth :: Dimension
myBorderWidth = 1

myNormalBorderColor = neutralColor
myFocusedBorderColor = majorColor


-- color scheme & wallpaper
pyWal = "wal -R -n"
myWallpaper = "$(cat $HOME/.starfiles/wallpaper)"
setWal = "feh --bg-fill " ++ myWallpaper

randomWallpaper = "$(ls $HOME/Pictures/wallpapers/*/*.jpg | shuf -n 1)"
setRandomWallpaper = "$HOME/.scripts/actions/set-wal " ++ randomWallpaper


randomScheme = "$(ls $HOME/Pictures/wallpapers/*/*.jpg | shuf -n 1)"
setRandomScheme = "$HOME/.scripts/actions/set-scheme " ++ randomScheme

-- screen-lock
-- get a random wallpaper
screenLockImage = "$(ls $HOME/Pictures/wallpapers/*/*.jpg | shuf -n 1)"
screenLockImageCacher = "betterlockscreen -u " ++ screenLockImage

-- clipboard manager
clipboardManager = "greenclip daemon"

-- manuals

systemManual = "$HOME/.dotfiles/docs/documentation.pdf"
nixosCheatsheet = "$HOME/Dropbox/computer/cheatsheets/nixos/nixos-cheatsheet.pdf"
nixosInstallCheatsheet = "$HOME/Dropbox/computer/cheatsheets/nixos/nixos-installation-cheatsheet.pdf"

showManual          = myPdfReader ++ " " ++ systemManual
docNixOSInstall     = myPdfReader ++ " " ++ nixosInstallCheatsheet
docNixOSCheatsheet  = myPdfReader ++ " " ++ nixosCheatsheet

-- scripts

scriptsDir = "$HOME/.scripts"

-- launchers
launchersDir = scriptsDir ++ "/launchers"

myLauncher = launchersDir ++ "/rofid"
myLauncherMod = launchersDir ++ "/rofip"

launcherMenu = "jgmenu --at-pointer"

firefoxHome = launchersDir ++ "/firefox-home"
firefoxSurf = launchersDir ++ "/firefox-surf"
firefoxWork = launchersDir ++ "/firefox-work"
firefoxPersonal = launchersDir ++ "/firefox-personal"
firefoxPrivate = launchersDir ++ "/firefox-private"
firefoxJunk = launchersDir ++ "/firefox-junk"

-- Scratchpad commands
cmdVimTodos = "vim -p ~/notes/todo/*.md"

-- chromeHome = "google-chrome-stable --profile-directory=home"
-- chromeWork = "google-chrome-stable --profile-directory=work"
-- chromePrivate = "google-chrome-stable --incognito"

-- player control
playerPlay = "playerctl play-pause"
playerNext = "playerctl next"
playerPrevious = "playerctl previous"
playerSeekAhead = "playerctl position 5+"
playerSeekBefore = "playerctl position 5-"
mySetVolume = "$HOME/.scripts/actions/set-volume"

-- power
powerDir = scriptsDir ++ "/power"

suspend     = powerDir ++ "/suspend"
reboot      = powerDir ++ "/reboot"
shutdown    = powerDir ++ "/shutdown"
lockSession = powerDir ++ "/lock-session"

-- screen
screenDir = scriptsDir ++ "/screen"

-- video recorder
screencapStart = screenDir ++ "/screencap-start"
screencapStop = screenDir ++ "/screencap-stop"

screenshotDesktop = screenDir ++ "/screenshot"
screenshotRegion = screenDir ++ "/screenshot-region"
screenshotDelay = screenDir ++ "/screenshot-delay"

-- services
servicesDir = scriptsDir ++ "/services"

redStart = servicesDir ++ "/start-redshift"
redStop = servicesDir ++ "/stop-redshift"


systemDir = scriptsDir ++ "/system"

-- bar

myBar :: String
-- Temporary fix for polybar service failing to activate
myBar = "systemctl --user restart polybar"
