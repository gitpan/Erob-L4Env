#!/usr/bin/perl -w
 
use Module::Build;
use strict;

{
	# The build script. 
	my $build = Module::Build->new
	(
		module_name	=>	"Erob::L4Env",
		license		=>	"perl",
		create_makefile_pl =>	"passthrough",
		pod_files	=>  {
			'doc/Introduction.pod'   => 'lib/Erob/L4Env/Introduction.pod',
			'doc/Notes.pod'	    	 => 'lib/Erob/L4Env/Notes.pod',
		},
	);

	my $signed = eval { require Digest::SHA1 };
	
	# Requires Module::Signature 
	# and Digest::SHA1
	# to generate the SIGNATURE file.

	if ($@) {
		print "Install Digest::SHA1 to generate SIGNATURE"."\n";
		$build->create_build_script;
	} else {
		$build->sign(1);	
		$build->create_build_script;
	}		

}

1;
	
