validation
assertValid: incrementor

	incrementor strictlyPositive ifFalse: [
		Error signal: 'Incrementor needs to be strictly positive' ]