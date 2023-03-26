Config { 
  font = "xft:Fira Code Mono:size=8:normal:antialias=true"
, borderColor = "black"
, border = TopB
, textOffset = 19
, bgColor = "#2D2C56"
, fgColor = "#ffffff"
, position = BottomSize C 100 30
, commands = [ 
    Run Weather "CYVR" ["-t","<tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
  , Run Network "eth0" ["-L","0","-H","32","--normal","green","--high","red"] 10
  -- , Run Network "wlan0" ["-L","0","-H","32","--normal","green","--high","red"] 10
  , Run Network "eth1" ["-L","0","-H","32","--normal","green","--high","red"] 10
  , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
  , Run Memory ["-t","Mem: <usedratio>%"] 10
  , Run Swap [] 10
  , Run Com "uname" ["-s","-r"] "" 36000
  -- , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
  , Run StdinReader
  , Run Date " %l:%M" "date" 10
  , Run Com "/bin/sh" ["-c", "~/.scripts/player-status"] "music" 20
  , Run Com "/bin/sh" ["-c", "~/.scripts/i3-volume"] "volume" 20              
  ]
, sepChar = "%"
, alignSep = "}{"
, template = "  %StdinReader% }{ %music%  |<fc=#ee9a00>%date%</fc>  |  %volume%   "
}