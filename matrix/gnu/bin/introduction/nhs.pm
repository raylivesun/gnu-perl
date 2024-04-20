#!/usr/bin/perl 

package introduction::ct;
package introduction::nhs;
package introduction::snomed;

use strict;
use warnings;
use utf8;

use Carp;


sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub get_ct {
    my $self = shift;
    my $ct = shift;
    if ($self->get_ct) {
        return $self->get_ct;
    } else {
        return $ct;
    }
}

sub get_nhs {
    my $self = shift;
    my $nhs = shift;
    if ($self->get_nhs) {
        return $self->get_nhs;
    } else {
        return $nhs;
    }
}