run: korpozar.xex korpozco.xex
	start $<

%.xex: %.asx msx.asx
	xasm -d COMPATIBLE=0 -o $@ $<

korpozco.xex: korpozar.asx msx.asx
	xasm -d COMPATIBLE=1 -o $@ $<

.DELETE_ON_ERROR:
