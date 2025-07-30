run: korpozar.xex korpozco.xex
	start $<

%.xex: %.asx msx.asx
	xasm -d COMPATIBLE=0 -o $@ $< -l

korpozco.xex: korpozar.asx msx.asx
	xasm -d COMPATIBLE=1 -o $@ $<

korpozar.zip: korpozar.xex korpozco.xex korpozar.txt
	rm -f $@ && 'C:/Program Files/7-Zip/7z' a -mx=9 -bd -bso0 -tzip $@ $^

.DELETE_ON_ERROR:
