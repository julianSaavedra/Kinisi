as yet unclassified
assertValid: targetDuration
 
	(targetDuration negative or: targetDuration isZero)
		ifTrue: [ Error signal: 'Total duration must be greater than zero' ].