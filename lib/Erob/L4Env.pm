# $Id: Dice.pm,v 1.2 2004-11-06 15:49:27-05 erob Exp $
# Erob::L4Env - 
# Access L4 primitives with L4Env, Dice compiler.

# Yeah, it changed. 
# The main reason is to avoid/resolve
# ambiguities and namespace collisions
# with the real L4Env and Dice authors. -erob
package Erob::L4Env;

# Maintain backward compatibility -- unless
# we have or need features in perl 5.8 and above...
use 5.00005;

use vars qw($VERSION);

use strict;

$VERSION = "0.01_07";

# Preloaded methods go here.

sub MkPrivateHeader {  

	# Generate C header for the given client or server.
	# We want portable code and the ability to play in L4. -erob
	# Parameters are:
	# 	libio			=> Generate code for the GenericIO subsystem.
	#	libsomething	=> Generate code for subsystem SOMETHING.
	#   libssl			=> Experimental OpenSSL support.
	# 	output 			=> "lib_hello_client.h"
	
	# your code here...
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
		libsomething	=>	'My::Lib::SomeThing',
		output			=>	'lib_hello_world.h',
	)->as_string();
		
=head1 DESCRIPTION

This module provides modularity towards several L4 subsystem(s).  
For an introduction to L4, please refer to L<Erob::L4Env::Story::L4>.

=head1 METHODS

=over

=item	MkPrivateHeader() 

This method is exported by default.

=back

=head1 SEE ALSO

=over

=item * L<Erob::L4Env::Story::Introduction>	

Introduction to L4 from a perl-programmer perspective.
My goals and some incentives surrounding L4 research and development.

=item * L<Erob::L4Env::GenericIO>

Perlish implementation of DROPS GenericIO. 

Several DROPS subsystems already
use it instead of the OSKit?

Not yet.

=item * L<Erob::L4Env::Story::Notes>

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

Etienne Robillard, E<lt>erob (at) cpan (dot) orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Etienne Robillard.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut

