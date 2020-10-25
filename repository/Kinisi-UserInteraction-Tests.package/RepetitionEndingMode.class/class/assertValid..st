as yet unclassified
assertValid: targetNumberOfTimes

	targetNumberOfTimes negative
		ifTrue: [ Error signal: 'Repetitions cannot be negative' ]