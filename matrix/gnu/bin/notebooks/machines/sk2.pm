#!/usr/bin/perl -w

package main;

use strict;
use warnings;

use Test::More tests => 1;



BEGIN { use_ok('test');}

diag("testing test");


1;

__END__

=pod

=encoding UTF-8

=head1 NAME

test

=head1 VERSION

version 0.01

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by the University of Utah. All rights reserved.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

