#!/usr/bin/perl 

package introduction::ct;
package introduction::snomed;

use strict;
use warnings;

use CGI;


sub new {
    my $class = shift;
    my $self = {};
    bless $class if $self;
}

sub run {
    my $self = shift;
    my $cgi = CGI->a;
    my $query = $cgi->Vars;
    print $cgi->header;
}

