module Hooks.EventHook
  ( myHandleEventHook
  )
where

import XMonad

import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

myHandleEventHook = mconcat
  [
  --   docksEventHook
  -- , handleEventHook defaultConfig
    docksEventHook
  ]
