#!/usr/bin/perl

=encoding UTF-8
=cut

=head1 DESCRIPTION

=cut

# common modules
use strict;
use warnings FATAL => 'all';
use feature 'say';
use utf8;
use open qw(:std :utf8);

use Carp;
use JSON::Schema;
use JSON::PP;
use File::Slurp;

# global vars

# subs

# main
sub main {
    my $schema = read_file '/app/data/schema.json';
    my $content = read_file '/app/data/data.json';

    my $validator = JSON::Schema->new($schema);
    my $json = decode_json($content);
    my $result = $validator->validate($json);

    if ($result) {
        say "Valid!";
    } else {
        say "Errors";
        say " - $_" foreach $result->errors;
    }

    say '#END';
}
main();
__END__
