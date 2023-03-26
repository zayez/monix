module Hooks.ManageHook
  ( myManageHook
  )
where

import System.IO
import XMonad
import Data.List
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import Control.Monad (liftM2)
import XMonad.Util.NamedScratchpad

import qualified XMonad.StackSet as W

import Apps.Alias
import Apps.Scratchpads

myManageHook :: ManageHook
myManageHook = composeAll
    [
      className =? "Gimp"      --> doFloat
    , className =? "pinentry" --> doFloat
    , className =? "gimp-2.10" --> doFloat
    , className =? "Google-chrome" --> viewShift "9"
    , className =? myPdfReader --> viewShift "3"
    , className =? "Zathura" --> viewShift "3"
    , className =? "libreoffice-writer" --> doShift "4"
    , className =? "libreoffice" --> viewShift "4"
    , className =? "libreoffice" --> viewShift "3"
    , className =? "libreoffice-writter" --> viewShift "3"
    , title =? "libreoffice" --> viewShift "3"
    , title =? "libreoffice-writer" --> viewShift "3"
    , className =? "Code" --> viewShift "4"
    , className =? "code" --> viewShift "4"
    , title =? "Private Browsing" --> viewShift "9"
    , className =? "Firefox"
      <&&>fmap ("Private Browsing" `isInfixOf`) title --> viewShift "9"
    , title =? "ranger" --> viewShift "5"
    , title =? "pcmanfm-qt" --> viewShift "5"
    , title =? "cmus" --> doShift "6"
    , className =? "spotify" --> doShift "6"
    , title =? "Spotify" --> doShift "6"
    , title =? "calibre" --> viewShift "7"
    , title =? "E-book viewer" --> viewShift "8"
    , className =? "qbittorrent" --> doShift "9"
    , className =? "qBittorrent" --> doShift "9"
    , isFullscreen --> doFullFloat
    , className =? "Anki"
      <&&> fmap ("Browse" `isInfixOf`) title
        --> doRectFloat (W.RationalRect 0.01 0.04 0.98 0.9)
    , className =? "anki"
      <&&> fmap ("Browse" `isInfixOf`) title
        --> doRectFloat (W.RationalRect 0.01 0.04 0.98 0.9)
    , className =? "Anki"
      <&&> fmap ("Card Type" `isInfixOf`) title --> doCenterFloat
    , className =? "Anki"
      <&&> fmap ("Profiles" `isInfixOf`) title --> doCenterFloat
    , className =? "Anki"
      <&&> fmap ("Preview" `isInfixOf`) title --> doCenterFloat
    , className =? "Anki"
      <&&> fmap ("Note Types" `isInfixOf`) title --> doCenterFloat
    , className =? "Anki"
      <&&> fmap ("Add" `isInfixOf`) title --> doCenterFloat
    , className =? "Anki"
      <&&> fmap ("Statistics" `isInfixOf`) title --> doCenterFloat
    , className =? "lximage-qt" --> doCenterFloat
    , title =? "Picture-in-Picture"
      --> doRectFloat (W.RationalRect 0.62 0.65 0.35 0.35)
    , className =? "Godot_Engine" --> doCenterFloat
    , className =? "Isometric Game" --> doCenterFloat
    , className =? "Godot_Engine" --> doRectFloat (W.RationalRect 0.1 0.15 0.75 0.7)
    , className =? "Thunar" --> doCenterFloat
    , className =? "Org.gnome.Nautilus"
      --> doRectFloat (W.RationalRect 0.05 0.05 0.9 0.85)
    , className =? "org.gnome.Nautilus"
      --> doRectFloat (W.RationalRect 0.05 0.05 0.9 0.85)
    , className =? "dolphin" --> doRectFloat (W.RationalRect 0.1 0.15 0.75 0.7)
    , className =? "mpv" --> doRectFloat (W.RationalRect 0.1 0.2 0.8 0.6)
    , className =? "Gimp-2.10"
      <&&> fmap ( "Change" `isInfixOf` ) title --> doCenterFloat
    , className =? "Gimp-2.10"
      <&&> fmap ( "Open" `isInfixOf` ) title --> doCenterFloat
    , className =? "firefox" <&&> resource =? "Dialog" --> doFloat
    , className =? "Firefox"
      <&&> fmap ( "Export Bookmarks File" `isInfixOf` ) title
        --> doRectFloat (W.RationalRect 0.05 0.05 0.6 0.6)
    , className =? "Firefox"
      <&&> fmap ( "Library" `isInfixOf` ) title
        --> doRectFloat (W.RationalRect 0.05 0.05 0.6 0.6)
    , className =? "Firefox"
      <&&> fmap ( "Save" `isInfixOf` ) title
        --> doRectFloat (W.RationalRect 0.05 0.05 0.6 0.6)

    , className =? "Code" <&&> title =? "Open Folder"
        --> doRectFloat (W.RationalRect 0.05 0.05 0.8 0.8)
    , className =? "Code"
      <&&> fmap ( "Open" `isInfixOf` ) title
        --> doRectFloat (W.RationalRect 0.05 0.05 0.6 0.6)
    , className =? "Code"
      <&&> fmap ( "Save" `isInfixOf` ) title
        --> doRectFloat (W.RationalRect 0.05 0.05 0.6 0.6)
    ] <+> manageDocks <+> namedScratchpadManageHook myScratchPads
    where viewShift = doF . liftM2 (.) W.greedyView W.shift

