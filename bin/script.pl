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
use JSON::PP;
use JSV::Validator;
use File::Slurp;

# global vars

# subs

# main
sub main {
    my $schema = read_file '/app/data/schema.json';
    my $data = read_file '/app/data/data.json';

    $schema = decode_json $schema;
    $data = decode_json $data;

    my $jsv = JSV::Validator->new();

    my $result = $jsv->validate($schema, $data, { throw_error => 1});

    if ($result) {
        say 'ok';
    } else {
        say 'fail';

        foreach my $error ($result->get_error()) {
            say $error->{message};
        }
    }

}
main();
__END__
