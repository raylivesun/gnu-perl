#!/usr/bin/perl 

package main;

use strict;
use warnings;

use Getopt::ArgvFile;
use Getopt::Long;
use Pod::Usage;

use Cwd;


my $ACCEPT = 0;
my $REQUIRE_ORDER = 1;
my $RETURN_IN_ORDER = 2;


my $VERSION = '0.1.0';

my $USAGE = 'usage: perl';
$USAGE .= ' configurations.pl';
$USAGE .= ' [options] <configuration.ini>';
$USAGE .= "\n";
$USAGE .= ' options: <configuration.ini>\n';


my $HELP = 'help: perl';
$HELP .= ' [options] <configuration.ini>\n';
$HELP .= "\n";
$HELP .= 'options: <configuration.ini>\n';


my $DESCRIPTION = 'description: perl';
$DESCRIPTION .= '[options] <configuration.ini>\n';
$DESCRIPTION .= "\n";
$DESCRIPTION .= 'options: <configuration.ini>\n';

my $AUTHOR = 'admin';
my $EMAIL = 'admin@amdin.com';

my $COPYRIGHT = 'Copyright (c) 2024 All rights reserved.\n';


GetOptions(
    'configuration.ini', '--configuration.ini'
    ) or say croack "--Configuration.ini must be specified\n";



my $config = new GetOptionsConfig();

$config->set_config_file($ARGV[0]);

$config->set_ACCEPT($ACCEPT);

$config->set_require_order($REQUIRE_ORDER);

$config->set_return_in_order($RETURN_IN_ORDER);

$config->set_version($VERSION);

$config->set_usage($USAGE);

$config->set_help($HELP);

$config->set_description($DESCRIPTION);

$config->set_author($AUTHOR);

$config->set_email($EMAIL);

$config->set_copyright($COPYRIGHT);

$config->parse();

$config->print_config();

$config->print_config_file();

$config->print();

$config->print_usage();

$config->print_help();



sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}


sub new_from_config_file {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    my $config_file = shift;
    $self->new_from_config_file($config_file);
    return $self;
}

1;

__END__

=encoding utf-8

=head1 NAME

configure.pl - Perl configured 

=head1 SYNOPSIS

perl configure.pl [options] <configuration.ini>

=head1 OPTIONS

=over 8

=item B<configuration.ini> - configuration.ini

=item B<--configuration.ini> - configuration.ini

=back

=head1 DESCRIPTION

perl configure.pl [options] <configuration.ini>

=head1 AUTHOR

admin

=head1 LICENSE

This library is free software; you can redistribute it and/or modify

 it under the same terms as Perl itself.

=head1 SEE ALSO

perl(1)

=cut
