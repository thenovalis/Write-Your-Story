#!/usr/bin/perl
# Written by [Your Name] for [Your Company], [Month] [Year]

use strict;
use warnings;

# Load necessary modules.
use IO::File;

# Set up variables for the filename and contents.
my $filename = "writeyourstory.txt";
my $contents = "";

# Open the file for writing.
my $file = IO::File->new("<$filename") or die "Error opening $filename for writing: $!";

# Append text to the contents.
$contents .= "Once upon a time, there was a world full of adventure and mystery.\n";
$contents .= "The people in this world lived in harmony and worked together to build a great civilization.\n";
$contents .= "But then one day, a dark force threatened to destroy everything they had worked so hard to create.\n";
$contents .= "The people had to band together to fight this evil force and protect their home.\n";
$contents .= "And so it was that they formed a group of brave warriors and set out on a heroic quest.\n";
$contents .= "They faced many dangers along their journey, but in the end they were triumphant.\n";
$contents .= "The people rejoiced at their victory and celebrated their new-found freedom.\n";
$contents .= "And they lived happily ever after.\n";

# Write the contents to the file.
print $file $contents;

# Close the file.
close $file or die "Error closing $filename: $!";

print "Successfully written to $filename.\n";