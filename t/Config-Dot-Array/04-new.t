# Pragmas.
use strict;
use warnings;

# Modules.
use Config::Dot::Array;
use English qw(-no_match_vars);
use Test::More 'tests' => 5;

# Test.
my $obj = Config::Dot::Array->new;
isa_ok($obj, 'Config::Dot::Array');

# Test.
eval {
	Config::Dot::Array->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Unknown parameter.');

# Test.
eval {
	Config::Dot::Array->new('something' => 'value');
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Unknown parameter \'something\'.');

# Test.
eval {
	Config::Dot::Array->new('config' => '');
};
is($EVAL_ERROR, "Bad 'config' parameter.\n",
	'Bad \'config\' parameter.');

# Test.
eval {
	Config::Dot::Array->new(
		'config' => {
			'key' => \*STDOUT,
		},
	);
};
is($EVAL_ERROR, "Bad 'config' parameter.\n",
	'Bad \'config\' parameter.');
