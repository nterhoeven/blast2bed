#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

my$script='../blast2bed';
my$input='test_input.bls';
my$expected='expected_output.bls';

is(-e $script,1,'script found');
is(-e $input,1,'input found');
is(-e $expected,1,'expected output found');

done_testing();
