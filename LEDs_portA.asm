include <p16f887.inc>
		BANKSEL TRISA
		CLRF TRISA ; configurer le port A en sortie

		BANKSEL PORTA
loop	MOVLW 0XFF
		MOVWF PORTA ; PORTA=OXFF mise à 1
		CALL tempo
		CLRF PORTA ; remise à 0
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