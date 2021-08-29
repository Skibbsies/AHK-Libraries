#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#InstallKeybdHook
#Persistent

; Thank you for using this library.
; You can include this library in your script using #Include <Filename>
; Please ensure that you include the filename's extension whilst including it in your script.

; The converting function can be called using ConvertUnits(x, y, z, k), where x, y, z and k are whole integers.
; The format of the the function is milliseconds, seconds, minutes, hours.

; The minute, hour and second parameters of the function are optional, and hence ConvertUnits(1) will return 1000 ms.

; CU() can also be used instead of ConvertUnits(), to the same effect.

ConvertUnits(millisecond, second := false, minute := false, hour := false) {
	if hour is not integer
		return
	if minute is not Integer
		return
	if second is not integer
		return
	if millisecond is not integer
		return
	
	return  millisecond + (second * 1000) + ( (minute * 60) * 1000 ) + ( (hour * 60 * 60) * 1000 )
}

CU(millisecond, second := false, minute := false, hour := false) {
	return ConvertUnits(millisecond, second, minute, hour)
}