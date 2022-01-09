validation
assertValidName: targetName

	targetName ifEmpty: [ Error signal: 'Property name cannot be empty' ]