open F, '../altirra/ATARIXL.rom' and binmode F or die;
local $/;
$_ = <F>;
for my $i (0 .. 16380) {
	my $b = ord(substr $_, $i) >> 2;
	if (ord(substr $_, $i + 1) >> 2 == $b && ord(substr $_, $i + 2) >> 2 == ($b ^ 1) && ord(substr $_, $i + 3) >> 2 == ($b ^ 1)) {
		printf "%x\n", $i;
	}
}
#print length $` if /[\x20-\x23]{2}[\x24-\x27]{2}/;
