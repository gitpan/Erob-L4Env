#!/usr/bin/perl -w
 
use Module::Build;
use strict;

{
	# the build script.
	my $build = Module::Build->new
		(
			module_name	=>	"Erob::L4Env",
			license		=>	"perl",
			create_makefile_pl =>	"passthrough",
		)->create_build_script();
}

1;
	
