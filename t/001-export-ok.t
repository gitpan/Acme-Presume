use strict;
use warnings;
use Test::More tests => 1;
use Acme::Presume qw(presume);

is( presume( sub { 1 } ), 1, 'export ok' );

1;