asserting
assertValid: delta
 
	(endingMode sameDomainAs: delta)
		ifFalse: [ Error signal: 'Total duration and step duration must be from the same domain' ].

	(endingMode isMinorThan: delta)
		ifTrue: [ Error signal: 'Total duration must be equal or greater than the step duration' ]