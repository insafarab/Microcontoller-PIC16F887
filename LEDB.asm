include <p16f887.inc>
		BANKSEL TRISB
		BCF TRISB ,0 ; configurer la ligne RB0 en sortie
		BANKSEL PORTB
loop	BSF PORTB,0 ; RB0=1
		GOTO loop
		end
