include <p16f887.inc>
		BANKSEL TRISB
		BCF TRISB,0 ; configurer la ligne RB0 en sortie

		BANKSEL PORTB
loop	BSF PORTB,0 ; RB0=1
		CALL tempo
		BCF PORTB,0
		CALL tempo
		GOTO loop
tempo
		movlw 0
		movwf 0x70
		movlw 0
		movwf 0x71
		movlw 13
		movwf 0x72
	t2  decfsz 0x70,f
		goto t2
		decfsz 0x71,f
		goto t2
		decfsz 0x72,f
		goto t2
		return

		end
