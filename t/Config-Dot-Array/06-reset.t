# Pragmas.
use strict;
use warnings;

# Modules.
use Config::Dot::Array;
use Test::More 'tests' => 2;

# Test.
my $c = Config::Dot::Array->new(
	'config' => {
		'key' => 'value',
	},
);
is($c->serialize, 'key=value', 'Serialize befor reset.');
$c->reset;
is($c->serialize, '', 'Serialize after reset.');
