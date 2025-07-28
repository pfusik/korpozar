run: korpozar.xex korpozcp.xex
	start $<

%.xex: %.asx msx.asx
	xasm -d COMPATIBLE=0 -o $@ $<

korpozcp.xex: korpozar.asx msx.asx
	xasm -d COMPATIBLE=1 -o $@ $<

.DELETE_ON_ERROR:
