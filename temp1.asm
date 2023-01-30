	include <p16f887.inc>
	movlw 0
	movwf 0x70
t1	decfsz 0x70,f
goto t1
	nop
	nop
	nop
	end