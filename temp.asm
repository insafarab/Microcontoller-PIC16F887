include <p16f887.inc>
	movlw 4
	movwf 70h
ici decfsz 70h,f
	goto ici
	nop
	end