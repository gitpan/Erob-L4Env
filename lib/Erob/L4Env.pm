# $Id: Dice.pm,v 1.2 2004-11-06 15:49:27-05 erob Exp $
# Erob::L4Env - 
# Access L4 primitives with L4Env, Dice compiler.

# Avoid ambiguities and namespaces collisions
# with L4Env et al. 
package Erob::L4Env;

# Stick with 5.0.5 
# unless we need features in >= 5.8. 
use 5.00005;

use vars qw($VERSION);

use strict;

$VERSION = "0.01_11";

# Preloaded methods go here.

sub MkPrivateHeader {  

	# Generate C header for the given client or server.
	# We want portable code and the ability to play in L4. -erob
	# Parameters are:
	# 	libio			=> Generate code for the GenericIO subsystem.
	#	libsomething	=> Generate code for subsystem SOMETHING.
	# 	libssl			=> Experimental OpenSSL support.
	#	libsdl			=> Experimental SDL support.
	#	output 			=> "lib_hello_client.h"
	
	# Your code here...
}

1;
__END__

# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Erob::L4Env - Perl extension to the L4Env API

=head1 SYNOPSIS

	MkPrivateHeader
	(
	 	libio			=>	'My::Module::GenericIO',
	 	libsdl	=>	'My::SDL',
	 	output			=>	'lib_hello_world.h',
	)->as_string();
		
=head1 DESCRIPTION

This module provides modularity towards several L4 subsystem(s).  
For an introduction to L4, please refer to L<Erob::L4Env::Introduction>.

=head2 Design decisions and implementation

First, I'll describe two distinct approaches to
implement this module. 

Please note that for the sake of simplicity, 
our application should be known or refered as I<hello_world>. 

=head3 Scenario 1: generating hello_world.h from perl

This approach seem's like the easiest to implement. 
It consist of creating the C header file needed by
the application. Finally, the file I<hello_world.c>
may need to be coded by hand. 

=head3 Scenario 2: learning from mod_perl and beyond

This approach consist of developing a perl-interpreter
portable on L4. So far, there's no report whatsoever
that perl has ever been ported to L4. 

=head1 METHODS

=over

=item	MkPrivateHeader() 

This method is exported by default.

=back

=head1 DOCUMENTATION

=over

=item * Erob::L4Env::Introduction

Introduction to L4 from a perl-programmer perspective.
My goals and some incentives towards L4 research and development.

=item * Erob::L4Env::Notes

Randomly chosen notes. Probably out-of-date :-)

=back

=head1 SEE ALSO

Developers may participate in further development
at: L<http://groups.yahoo.com/group/perl-L4>.

L<perlapi>, L<perlembed>

L<perl(1)>

=head1 BUGS

Documentation is drastically out-of-date :-)

The rationale aspect is left as an exercise to the reader.

Cannot drop-in perl5 modules yet. 

=head1 AUTHOR

Etienne Robillard, erob (at) cpan (dot) org

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Etienne Robillard.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut

