#!/usr/bin/perl -w 


package main;

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok('test');}

sub test {
    my $obj = test->new();
    ok($obj->{diag('test')});
    return 1;
}

test();

__END__

=head1 NAME

test.t - test module

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2024 International Business Machines Corporation. All rights reserved.

=cut
