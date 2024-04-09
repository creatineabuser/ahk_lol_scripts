#NoEnv
SendMode Input
SetKeyDelay, 0
PressKeys()
{
    SendInput, {e}
    Sleep, 100
    SendInput, {q}
    Sleep, 40
    SendInput, {r}
}
$*d::
	PressKeys()
return
