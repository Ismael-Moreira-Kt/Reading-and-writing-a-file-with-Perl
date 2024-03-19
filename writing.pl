#!/usr/bin/perl


use strict;
use warnings;
use Path::Tiny;
use autodie;



my $dir = path("src");
my $file = $dir->child("newText.txt");
my $file_handle = $file->openw_utf8();
my @list = (
    "uma lista",
    "do que será escrito",
    "em cada linha"
);



foreach my $line (@list) {
    $file_handle->print($line."\n");
}