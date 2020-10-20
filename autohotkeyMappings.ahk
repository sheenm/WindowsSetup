; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;------------------------------------------------------------Alt (now ctrl - like cmd)
LCtrl & Tab:: AltTab
!Tab:: Send ^{Tab}
!+Tab:: Send ^+{Tab}

; ^Space:: Send #{Esc}

^Left::Send {Home}
^Right::Send {End}
^+Left::Send +{Home}
^+Right::Send +{End}

^Up::Send ^{Home}
^Down::Send ^{End}
^+Up::Send ^+{Home}
^+Down::Send ^+{End}

^Backspace::
    Send +{Home}
    Send {Backspace}
Return
;----------------------------------------------------------- WinKey (now Alt)
!Left::Send ^{Left}
!Right::Send ^{Right}
!+Left::Send ^+{Left}
!+Right::Send ^+{Right}

!Backspace::
    Send ^+{Left}
    Send {Backspace}
Return

;--------------------------------------------------------------CapsLock (now AppsKey)
AppsKey::Return
AppsKey & r::^r
AppsKey & Space::Send ^{Space}
AppsKey & `::Send #0
AppsKey & 1::Send #1
AppsKey & 2::Send #2
AppsKey & 3::Send #3
AppsKey & 4::Send #4
AppsKey & 5::Send #5
AppsKey & 6::Send #6
AppsKey & 7::Send #7
AppsKey & 8::Send #8
AppsKey & 9::Send #9
;--------------------------------------------------------------

; Close Application
^q::Send !{F4}


;;;;; TODO: cmdDown cmdUp in explorer should go up/down
