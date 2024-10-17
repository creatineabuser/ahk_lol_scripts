#NoEnv
toggle := 0  

PressKeys()
{
    SendInput, {e}
    Sleep, 70
    SendInput, {q}
    Sleep, 10
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

PressKeysWall()
{
    SendInput, {e}
    Sleep, 70
    SendInput, {q}
    Sleep, 10
    SendInput, {w}
}

$*XButton2::
	PressKeysWall()
return