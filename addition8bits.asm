	include <p16f887.inc>
	banksel 0x2F
	clrf 0x2F
	movf 0x20,W
	addwf 0x21,W
	movwf 0x30
	btfsc STATUS,C
	incf 0x2F
fin nop
	end
