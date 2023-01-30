include <p16f887.inc>
	movlw 0
	movwf 0x70
	movlw 0
	movwf 0x71
t2  decfsz 0x70,f
	goto t2
	decfsz 0x71,f
	goto t2
	nop
	nop
	nop
	end