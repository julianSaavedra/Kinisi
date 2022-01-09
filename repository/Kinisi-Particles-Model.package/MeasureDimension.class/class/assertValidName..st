validation
assertValidName: targetName

	targetName ifEmpty: [ Error signal: 'Dimension name cannot be empty' ]