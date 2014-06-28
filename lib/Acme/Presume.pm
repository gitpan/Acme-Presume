package Acme::Presume;
use strict;
use warnings;
use Exporter;

our (@ISA, @EXPORT_OK);
our $VERSION = 1.00;

BEGIN {
	require Exporter;
	@ISA = qw(Exporter);
	@EXPORT_OK = qw(presume);
}

=head1 NAME

Acme::Presume - Presume that the block of code should never see the light of day.

=head1 DESCRIPTION

Presume will allow one to execute a block of code, without the burden of strict
variable checking, seeing warnings, or worrying about failure. Code will execute
perfectly, within presume, every time.

There isn't one good reason this module should exist. Yet, here we are.

pre-sume (v)

1. suppose that something is the case on the basis of probability.

2. be audacious enough to do something.

=head1 USAGE

use Acme::Presume qw(presume);

presume sub {
	die 'Oh no!';
};

=head1 PUBLIC METHODS

=over 4

=item presume( BLOCK )

Execute this block under eval, without strict, and without warnings. Will return
the end value of the block, but swallow any exceptions, warnings, or failure.

=cut

sub presume {
	my ($block) = @_;

	return eval {
		no warnings;
		no strict;
		$block->();
	}
}

=back

=head1 LICENSE

Copyright 2014, Nicholas Melnick. This library is free software; you may
redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;
