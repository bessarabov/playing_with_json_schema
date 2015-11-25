var Ajv = require('ajv');
var fs = require('fs');

var ajv = Ajv();

var schema = JSON.parse(fs.readFileSync('/app/data/schema.json', 'utf8'));
var data = JSON.parse(fs.readFileSync('/app/data/data.json', 'utf8'));

var valid = ajv.validate(schema, data);

if (valid) {
    console.log('valid');
} else {
    console.log(ajv.errors);
}
