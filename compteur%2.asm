include <p16f887.inc>
		BANKSEL TRISA
		CLRF TRISA ; configurer le port A en sotie

		BANKSEL PORTA
		CLRF 0X30
loop	MOVF 0X30,W
		MOVWF PORTA 
		CALL tempo
		INCF 0X30,F
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