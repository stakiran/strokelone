#SingleInstance force
#Persistent
#KeyHistory 20
#InstallKeybdHook

priorkey := A_PriorKey

Numpad1::
  push_priorkey(1)
Return

Numpad2::
  push_priorkey(2)
Return

Numpad3::
  push_priorkey(3)
Return

Numpad4::
  push_priorkey(4)
Return

Numpad5::
  push_priorkey(5)
Return

Numpad6::
  push_priorkey(6)
Return

Numpad7::
  push_priorkey(7)
Return

Numpad8::
  push_priorkey(8)
Return

Numpad9::
  push_priorkey(9)
Return

push_priorkey(count){
  global priorkey
  old_priorkey := priorkey
  priorkey := A_PriorKey

  is_numpad_found := InStr(priorkey, "Numpad")
  if(is_numpad_found){
    priorkey := old_priorkey
  }

  Loop %count% {
    SendEvent {%priorkey% down}
    Sleep 1
  }
  SendEvent {%priorkey% up}
}
