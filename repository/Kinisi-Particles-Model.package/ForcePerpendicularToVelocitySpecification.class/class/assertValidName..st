validation
assertValidName: targetName

	targetName ifEmpty: [ Error signal: 'Specification name cannot be empty' ]