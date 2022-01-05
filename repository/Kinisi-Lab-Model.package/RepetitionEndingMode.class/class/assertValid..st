validation
assertValid: targetNumberOfTimes

	targetNumberOfTimes negative
		ifTrue: [ Error signal: 'Repetitions cannot be negative' ]