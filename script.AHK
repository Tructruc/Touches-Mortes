#SingleInstance, Force
#InstallKeybdHook

Numpad0::
    ;Touches mortes en AltGr Simple
	Send "#Touches mortes en AltGr simple appui"{Enter}
    deads = "èénmrIi?qvQh;cfzlEgtsd"
    Loop, parse, deads
    {
    Send <details> {Enter}  <summary>Touche morte : %A_LoopField%</summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}

    Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | {RAlt down}%dk%{RAlt up}%A_LoopField% | {RAlt down}%dk%{RAlt up}{LShift down}%A_LoopField%{LShift up} | {RAlt down}%dk%{RAlt up}{RAlt down}%A_LoopField%{RAlt up} | {RAlt down}%dk%{RAlt up}{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}  
    }
	
	
	;Touches mortes en AltGr Double
	Send "#Touches mortes en AltGr double appui"{Enter}
	deads_double = éèriqmn?tz
	Loop, Parse,deads_double
	{
	Send <details> {Enter}  <summary>Touche morte : 2x %A_LoopField%</summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}
	
	Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | {RAlt down}%dk%%dk%{RAlt up}%A_LoopField% | {RAlt down}%dk%%dk%{RAlt up}{LShift down}%A_LoopField%{LShift up} | {RAlt down}%dk%%dk%{RAlt up}{RAlt down}%A_LoopField%{RAlt up} | {RAlt down}%dk%%dk%{RAlt up}{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}  
    }
	
	;Touches mortes simple sans modificateur 
	Send "#Touches mortes sans modificateur simple appui"{Enter}
	deads_no = ^
	Loop, Parse,deads_no
	{
	Send <details> {Enter}  <summary>Touche morte : %A_LoopField%</summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}
	
	Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | %dk%%A_LoopField% | %dk%{LShift down}%A_LoopField%{LShift up} | %dk%{RAlt down}%A_LoopField%{RAlt up} | %dk%{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}  
    }
	
	;Touches mortes double sans modificateur 
	Send "#Touches mortes en AltGr double appui"{Enter}
	deads_no_double = ^
	Loop, Parse,deads_no_double
	{
	Send <details> {Enter}  <summary>Touche morte : 2x %A_LoopField%</summary> {Enter} {Enter}
    dk = %A_LoopField%
    keys = $()@+-*=béopyôvdljkzauei,ctsrnmçàèx.w’gqhfê
    Send | Touche | Normal | Shift | AltGr | AltGrShift | {Enter}| --- |  --- | --- | --- | --- |{Enter}
	
	Loop, parse, keys
    {
    	SendInput,| %A_LoopField% | %dk%%dk%%A_LoopField% | %dk%%dk%{LShift down}%A_LoopField%{LShift up} | %dk%%dk%{RAlt down}%A_LoopField%{RAlt up} | %dk%%dk%{LShift down}{RAlt down}%A_LoopField%{RAlt up}{LShift up} | {Enter}
    }
    Send </details> {Enter} {Enter}  
    }
	
