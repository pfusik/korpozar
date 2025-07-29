open F, '../altirra/ATARIXL.rom' and binmode F or die;
local $/;
$_ = <F>;
for my $i (0 .. 16380) {
	my $s = substr($_, $i, 4) & "\xfc" x 4;
	if (($s ^ substr($s, 0, 1) x 4) eq "\0\0\4\4") {
		printf "%x\n", $i;
	}
#	if ((substr($_, $i, 24) & "\x40" x 24) eq (join '', map $_?"\x40":v0, 0,0,0,0,0,1,1,0,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1)) {
#		printf "%x\n", $i;
#	}
}
#print length $` if /[\x20-\x23]{2}[\x24-\x27]{2}/;
