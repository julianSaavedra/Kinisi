instance creation
assertValid: targetName

	targetName ifEmpty: [ Error signal: 'Plot Type name cannot be empty' ]