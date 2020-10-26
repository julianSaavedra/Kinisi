validation
assertValid: totalDuration for: stepDuration

	totalDuration negative
		ifTrue: [ self signal: 'Total duration cannot be negative' ].

	(totalDuration sameDomainAs: stepDuration)
		ifFalse: [ self signal: 'Total duration and step duration must be from the same domain' ].

	totalDuration < stepDuration
		ifTrue: [ self signal: 'Total duration must be equal or greater than the step duration' ]

	