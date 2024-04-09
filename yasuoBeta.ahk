#NoEnv
SendMode Input
SetKeyDelay, 0
PressKeys()
{
    SendInput, {e}
    Sleep, 72
    SendInput, {q}
    Sleep, 11
    SendInput, {r}
}
$*d::
	PressKeys()
return