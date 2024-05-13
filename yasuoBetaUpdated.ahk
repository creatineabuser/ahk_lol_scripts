#NoEnv
toggle := 0  

PressKeys()
{
    SendInput, {e}
    Sleep, 72
    SendInput, {q}
    Sleep, 11
    SendInput, {r}
}

DefaultAction()
{
    SendInput, d
}

$*d::
    if (toggle)  
        PressKeys()
    else
        DefaultAction()
return

$*F6::  ; 
    toggle := !toggle
return