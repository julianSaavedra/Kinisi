validation
assertValidRepetitions: times
 
	times negative
		ifTrue: [ self signal: 'Repetitions cannot be negative' ]