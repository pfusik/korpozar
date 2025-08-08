run: korpozar.xex korpozco.xex Korpozar.sap
	start $<

%.xex: %.asx msx.asx
	xasm -d COMPATIBLE=0 -o $@ $< -l

korpozco.xex: korpozar.asx msx.asx
	xasm -d COMPATIBLE=1 -o $@ $<

korpozar.zip: korpozar.xex korpozco.xex korpozar.txt
	rm -f $@ && 'C:/Program Files/7-Zip/7z' a -mx=9 -bd -bso0 -tzip $@ $^

Korpozar.sap: msx.asx
	xasm -d SAP=1 -d COMPATIBLE=1 -o $@ $< -l

.DELETE_ON_ERROR:
