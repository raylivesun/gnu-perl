#!/usr/bin/perl -w 

package main;

use strict;
use warnings;
use Getopt::ArgvFile;
use File::Basename;
use File::Path;
use File::Copy;
use File::Find;
use File::DosGlob;


my $usage = <<USAGE;

USAGE

my $argv = shift @INC;
my $script = basename($argv);

my $opts = Getopt::ArgvFile::argvFile($argv);
$opts =~ s/|//g;


my $help = 0;
my $verbose = 0;


Getopt::ArgvFile::argvFile($argv);


$opts =~ s/^--help//;
$opts =~ s/^-h//;
$opts =~ s/^--verbose//;
$opts =~ s/^-v//;

if ($help) {
    print $usage;
    exit 0;
}

if ($verbose) {
    print $verbose;
    exit 0;
}

my @files = File::Basename::basename($script);

my $dir = dirname($script);

1;

__END__

=pod

=head1 NAME

make_dir.pl

=head1 SYNOPSIS

make_dir.pl [options] make_dir.pl

=head1 OPTIONS

=over 4

=item B<-h|--help>

Print this message and exit.

=item B<-v|--verbose>

Print more information

=back

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT

Copyright (c) 2024 International Business Machines Corporation. All rights reserved.

=head1 LICENSE

Licensed under the Apache License, version 2.0 (the "License"); you may not use this file except
in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License 

===========================================================================

=head1 SEE ALSO

=cut