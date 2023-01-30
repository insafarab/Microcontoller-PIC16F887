		include <p16f887.inc>
		banksel 0x6f
		movf 0x6f,w
		banksel 0xef
		subwf 0xef,w
		btfsc STATUS,Z
		GOTO EGAUX; z=1 -> R=0
		BANKSEL 0x1EF; z=0 -> R#0
		MOVLW 0xFF
		MOVWF 0x1EF
		goto FIN
EGAUX	
		BANKSEL 0x16F
		CLRF 0x16F
FIN		NOP
		END