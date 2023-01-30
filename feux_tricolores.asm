include <p16f887.inc>
		BCF STATUS,C
		BANKSEL TRISB
		CLRF TRISB ; configurer le port B en sortie
		
		BANKSEL PORTB
loop	MOVLW 0X20
		MOVWF PORTB
		CALL tempo1
		MOVLW 0X01
		MOVWF PORTB
		CALL tempo2
;***************************************************
		MOVLW 0X10
		MOVWF PORTB
		CALL tempo1
		MOVLW 0X01
		MOVWF PORTB
		CALL tempo2
;***************************************************
		MOVLW 0X08
		MOVWF PORTB
		CALL tempo1
		MOVLW 0X04
		MOVWF PORTB
		CALL tempo2
;***************************************************
		MOVLW 0X08
		MOVWF PORTB
		CALL tempo1
		MOVLW 0X02
		MOVWF PORTB
		CALL tempo2
;***************************************************
		GOTO loop

tempo1
		movlw 0
		movwf 0x70
		movlw 0
		movwf 0x71
		movlw 8
		movwf 0x72
	t1  decfsz 0x70,f
		goto t1
		decfsz 0x71,f
		goto t1
		decfsz 0x72,f
		goto t1
		return

tempo2
		movlw 0
		movwf 0x70
		movlw 0
		movwf 0x71
		movlw 21
		movwf 0x72
	t2  decfsz 0x70,f
		goto t2
		decfsz 0x71,f
		goto t2
		decfsz 0x72,f
		goto t2
		return

		end
