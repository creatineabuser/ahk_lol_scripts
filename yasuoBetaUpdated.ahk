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

GetKeyboardLayout()
{
    threadId := DllCall("GetWindowThreadProcessId", "UInt", DllCall("GetForegroundWindow"), "UInt", 0)
    layout := DllCall("GetKeyboardLayout", "UInt", threadId)
    return layout & 0xFFFF
}

$*d::
    if (toggle)  
    {
        PressKeys()
    }
    else
    {
        currentLang := GetKeyboardLayout()
        if (currentLang == 0x0419)
        {
            SendInput, в
        }
        else
        {
            SendInput, d
        }
    }
return

$*F6::
    toggle := !toggle
return


toggle1 := 0  


SetTimer, PressA, Off

$*F3::
    toggle1 := !toggle1 
    if (toggle1)
        SetTimer, PressA, 7
    else
        SetTimer, PressA, Off
    return

PressA:
    SendInput, a
    return
