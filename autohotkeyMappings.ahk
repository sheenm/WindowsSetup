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

^+5::Send #+{S} ; - Screenshot cmd shift 5
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

; Almost simulates ctrl+tab
AppsKey & Tab::
    Send, {Ctrl Down}{Tab}
    KeyWait AppsKey
	Send {Ctrl Up}
Return


AppsKey & c::^c
AppsKey & g::^g
AppsKey & Left::Send !{Left}
AppsKey & Right::Send !{Right}
; - Need to fix this - currently !{Backspace} is defined above and removes the whole word
AppsKey & Backspace::Send !{Backspace}
AppsKey & Delete::Send !{Delete}

;+AppsKey Left::Send !+{Left}
;+AppsKey{Right}::Send !+{Right}


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
