tests
testExperimentCannotBeObservedWithANegativeOrZeroPeriod

	|  twoSeconds |
	twoSeconds := Duration seconds: 2.
	observationWorkbench period: twoSeconds.
	
	self
		should: [ observationWorkbench period: (Duration seconds: -1) ]
		raise: Error
		whoseDescriptionIncludes: 'Period cannot be negative nor zero'.
	self assert: observationWorkbench period equals: twoSeconds.
	
	self
		should: [ observationWorkbench period: (Duration seconds: 0) ]
		raise: Error
		whoseDescriptionIncludes: 'Period cannot be negative nor zero'.
	self assert: observationWorkbench period equals: twoSeconds