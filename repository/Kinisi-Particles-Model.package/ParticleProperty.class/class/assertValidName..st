validation
assertValidName: targetName

	targetName ifEmpty: [ Error signal: 'Property empty cannot be empty' ]