# Playing with json schema

## Nodejs

Build:

    docker build --tag tmp_js --file="Dockerfile.node" .

Run:

    docker run --rm tmp_js

Result:

    [ { keyword: 'required',
        dataPath: '',
        params: { missingProperty: 'name' },
        message: 'should have required property \'name\'' } ]

And the error is what I exepect.

## Perl

Build:

    docker build --tag tmp_perl --file="Dockerfile.perl" .

Run:
    docker run --rm tmp_perl

Result:

    fail
    The instance properties has not required properties (missing: name)

## Question

I've asked a question:

 * http://perlmonks.org/?node_id=1148621
