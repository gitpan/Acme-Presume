use strict;
use warnings;
use Test::More tests => 3;
use Acme::Presume;

ok( Acme::Presume::presume( sub { 1 } ), 'no-op' );
is( Acme::Presume::presume( sub { return 'Whee'; } ), 'Whee', 'return val' );
is( Acme::Presume::presume( sub { die 'Oh no!'; } ), undef, 'no die' );

1;