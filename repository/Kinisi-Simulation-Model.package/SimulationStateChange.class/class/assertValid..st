validation
assertValid: changeBlock
 
	changeBlock numArgs = 1
		ifFalse: [ Error signal: 'Pluggable block must have one argument only' ]