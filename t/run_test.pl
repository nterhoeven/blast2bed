#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

my$script='../blast2bed';

is('-e $script',1,'script found');

done_testing();
