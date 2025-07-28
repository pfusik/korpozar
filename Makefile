run: korpozar.xex
	start $<

%.xex: %.asx
	xasm -o $@ $<

.DELETE_ON_ERROR:
