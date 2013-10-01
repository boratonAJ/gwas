#!/usr/bin/perl -w

use strict;

my $p_border = 1E-4;
#print("border = $p_border\n");

my $i = 0;
while(<>) {
	my @fields = split(/\t/);
	if ($i > 0) {
		if($fields[8] < $p_border) {
			print(join("\t",@fields));
		}
	}
	$i++;
}
