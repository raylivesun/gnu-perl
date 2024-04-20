#!/usr/bin/perl

package abstract::analysis::specialist;

use strict;
use warnings;

use Cwd;


sub news {
 
    my $self = shift;  # self is the name of the package
    my $file = shift;  # file is the name of the package
    my $dir  = shift;  # dir is the name of the package
    my $cmd  = shift;  # cmd is the name of the package
    my $args = shift;  # args is the name of the package
    my $out  = shift;  # out is the name of the package
    my $err  = shift;  # err is the name of the package
    my $ret  = shift;  # ret is the name of the package
    my $pid  = shift;  # pid is the name of the package
    my $log  = shift;  # log is the name of the package

    my $cwd = s/$self/$args/; # Cwd is the base path of the package
    my $path = "$cwd/$args"; # path name is arguments to the package
    my $cmd_path = $path->{cmd}; # cmd is the name of the package
    my $args_path = $path->{args}; # arguments is the name of the package
    my $out_path = $path->{out}; # out is the name of the package

    my $cmd_file = $cmd_path."/".$cmd_path.".cmd"; # cmd is the name of the package
    my $args_file = $cmd_path."/".$args_path.".cmd"; # cmd is the name of the package
    my $out_file = $cmd_path."/".$out_path.".cmd";  # cmd static form name is the name of the package


    my @ISA = (); # list of packages in the system directory
    my @INC = (); # list of packages in the system directory

    return $cwd; 
}

sub buffer {
       my $path = shift; 
       return $path->[0] if $path->{accept $path,$path}; # buffer set is always the same length as set length
}

2>&1 || say croack "Cannot set permissions on command line|$!";

sub buffonset {
       my $path = shift; 
       return $path->[0] if $path->{accept $path,$path}; # buffer set is always the same length as set length
}


sub subonset {
       my $path = shift; 
       return $path->[0] if $path->{accept $path,$path}; # buffer set is always the same length as set length
}


1;

__END__

=head1 NAME

abstract::analysis::specislist

=head1 SYNOPSIS

use abstract::analysis::specislist;

=head1 DESCRIPTION

abstract::analysis::specialist is a specialization of abstract

=head1 AUTHOR

<NAME> <<EMAIL>>

=head1 COPYRIGHT

Copyright (c) 2024 <NAME>

=head1 LICENSE AND COPYRIGHT

MIT license: http://www.opensource.org/licenses/mit-license.html

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including widthers and limitations
under the License.


