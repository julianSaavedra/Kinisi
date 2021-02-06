validaiton
assertValid: targetNumber

	(targetNumber > 0 and: [targetNumber isInteger])
		ifFalse: [ Error signal: 'Collatz Conjecture state must be a strictly positive integer' ]