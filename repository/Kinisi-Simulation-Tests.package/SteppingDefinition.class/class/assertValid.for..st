validation
assertValid: totalDuration for: stepDuration

	totalDuration negative
		ifTrue: [ self signal: 'Total duration cannot be negative' ].

	totalDuration < stepDuration
		ifTrue: [ self signal: 'Total duration must be equal or greater than the step duration' ]