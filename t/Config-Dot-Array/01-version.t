# Pragmas.
use strict;
use warnings;

# Modules.
use Config::Dot::Array;
use Test::More 'tests' => 1;

# Test.
is($Config::Dot::Array::VERSION, 0.01, 'Version.');
