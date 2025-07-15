run: korpozar.xex
	start $<

%.xex: %.asx
	xasm -q -o $@ $<

.DELETE_ON_ERROR:
