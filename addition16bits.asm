include <p16f887.inc>
	banksel 0x2F
	clrf 0x2F
	movf 0x21,W
	addwf 0x23,W
	movwf 0x31
	btfsc STATUS,C
	incf 0x20
	movf 0x20,W
	addwf 0x22,W
	movwf 0x30
	btfsc STATUS,C
	incf 0x2F
	nop
	end
