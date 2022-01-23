#SingleInstance, Force
#InstallKeybdHook
SetBatchLines -1

Numpad0::
    ;Touches mortes en AltGr Simple
	Send <details>{Enter}<summary>#Touches mortes en AltGr simple appui</summary>{Enter} <p>    </p>{Enter}
    deads = èénmrIi?qvQh;cfzlEgtsd
    Loop, parse, deads
    {
    Send <details> {Enter}  <summary>Touche morte : <b>%A_LoopField%</b></summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}

    Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | {RAlt down}%dk%{RAlt up}%A_LoopField% | {RAlt down}%dk%{RAlt up}{LShift down}%A_LoopField%{LShift up} | {RAlt down}%dk%{RAlt up}{RAlt down}%A_LoopField%{RAlt up} | {RAlt down}%dk%{RAlt up}{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}  
    }
	Send </details> {Enter} {Enter} 
	
	;Touches mortes en AltGr Double
	Send <details>{Enter}<summary>#Touches mortes en AltGr double appui</summary>{Enter} <p>    </p>{Enter}
	deads_double = éèriqmn?tz
	Loop, Parse,deads_double
	{
	Send <details> {Enter}  <summary>Touche morte : <b>2x %A_LoopField%</b></summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}
	
	Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | {RAlt down}%dk%%dk%{RAlt up}%A_LoopField% | {RAlt down}%dk%%dk%{RAlt up}{LShift down}%A_LoopField%{LShift up} | {RAlt down}%dk%%dk%{RAlt up}{RAlt down}%A_LoopField%{RAlt up} | {RAlt down}%dk%%dk%{RAlt up}{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}
	}
	Send </details> {Enter} {Enter}
