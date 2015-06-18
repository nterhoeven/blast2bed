#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

my$script='../blast2bed';
my$input='test_input.bls';
my$expected='expected_output.bed';
my$result='test_input.bed';

ok(-e $script,'script found');
ok(-e $input,'input found');
ok(-e $expected,'expected output found');

print STDERR "removing previous test results file $result if exists\n";
system("rm $result") if -e $result;

print STDERR "running $script $input\n";
system("$script $input");
ok(-e $result, 'script produced output');

done_testing();
