#!/usr/bin/perl

use strict;
use warnings;

# define filehandle to read/write
my $fhw;
my $fhr;

# open the writing file handle
open ($fhw, '>', 'Story.txt') or die $!;

# open the reading file handle
open ($fhr, '<', 'MyStory.txt') or die $!;

# Loop through the file
while (my $line = <$fhr>) {
    chomp $line;
    if ($line =~  /^\s*$/) {
        # empty line
    }
    elsif ($line =~ /\S/) {
        # not an empty line
        if ($line =~ /^\s+/) {
            # start with a space
            # do something
            $line =~ s/^\s+//; # remove the spaces
            print $fhw $line;
        }
        else {
            # no space
            # do something
            print $fhw $line;
        }
    }
}

# close all the filehandles
close $fhr;
close $fhw;

# end of program.