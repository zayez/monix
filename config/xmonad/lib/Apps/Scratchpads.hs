module Apps.Scratchpads where

import XMonad
import XMonad.Util.Scratchpad
import XMonad.Util.NamedScratchpad
import qualified XMonad.StackSet as W

import Apps.Alias

centerWindowGeo = customFloating $ W.RationalRect l t s s
      where
        s = 0.9
        t = (1 - s) / 2
        l = (1 - s) / 2

bottomTermGeo = customFloating $ W.RationalRect l t w h
      where
        h = 0.3       -- height, 10%
        w = 1         -- width, 100%
        t = 1 - h     -- bottom edge
        l = (1 - w) / 2 -- centered left/right

topTermGeo = customFloating $ W.RationalRect l t w h
      where
        h = 0.4       -- height, 10%
        w = 1         -- width, 100%
        t = 0     -- bottom edge
        l = (1 - w) / 2 -- centered left/right

myScratchPads = [
    NS "CenterTerm" spawnCenterTerm findCenterTerm manageCenterTerm
  , NS "BottomTerm" spawnBottomTerm findBottomTerm manageBottomTerm
  , NS "TopTerm" spawnTopTerm findTopTerm manageTopTerm
  , NS "cmus" spawnCmus findCmus manageCmus
  , NS "gotop" spawnGotop findGotop manageGotop
  , NS "notes" spawnNotes findNotes manageNotes
  , NS "todo" spawnTodo findTodo manageTodo
  , NS "spotify" "spotify"
      (resource =? "spotify")
      nonFloating
  , NS "code" "code"
      (resource =? "code")
      nonFloating
  ] where
    spawnCenterTerm  = myTerminal ++ " -t CenterTerm"
    findCenterTerm   = title =? "CenterTerm"
    manageCenterTerm = centerWindowGeo

    spawnBottomTerm  = myTerminal ++ " -t BottomTerm"
    findBottomTerm   = title =? "BottomTerm"
    manageBottomTerm = bottomTermGeo

    spawnTopTerm  = myTerminal ++ " -t TopTerm"
    findTopTerm   = title =? "TopTerm"
    manageTopTerm = topTermGeo

    spawnCmus  = myTerminal ++ "  -t CmusPad -e cmus"
    findCmus   = title =? "CmusPad"
    manageCmus = centerWindowGeo

    spawnGotop  = myTerminal ++ "  -t GotopPad -e gotop"
    findGotop   = title =? "GotopPad"
    manageGotop = centerWindowGeo

    spawnNotes  = myTerminal ++ "  -t NotesPad -e vim ~/notes"
    findNotes   = title =? "NotesPad"
    manageNotes = centerWindowGeo

    spawnTodo  = myTerminal ++ "  -t TodoPad -e " ++ cmdVimTodos
    findTodo   = title =? "TodoPad"
    manageTodo = centerWindowGeo