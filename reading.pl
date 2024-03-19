#!/usr/bin/perl


use strict;
use warnings;
use Path::Tiny;
use autodie;



my $dir = path("src");
my $file = $dir->child("text.txt");
my $content = $file->slurp_utf8();
my $file_handle = $file->openr_utf8();



while (my $line = $file_handle->getline()) {
    print $line;
}