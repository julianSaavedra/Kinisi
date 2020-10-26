validation
assertValidStepDelta: stepDelta
 
	(stepDelta isZero or: [stepDelta negative])
		ifTrue: [ self signal: 'Step duration must be greater than zero' ]