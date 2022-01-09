validation
assertValidDescription: description

	description ifEmpty: [ Error signal: 'Specification description cannot be empty' ]