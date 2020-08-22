asserting
assertValid: targetName
 
	targetName ifEmpty: [ Error signal: 'Interface definition name cannot be empty' ]