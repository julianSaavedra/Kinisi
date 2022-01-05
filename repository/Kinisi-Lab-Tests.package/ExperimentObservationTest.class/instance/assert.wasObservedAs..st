asserting
assert: result wasObservedAs: observations

	self denyEmpty: observations.
	result withTimeAndStateDo: [ :time :state | 
		observations
			detect: [:observation | observation time = time ]
			ifFound: [:matchingObservation | self assert: matchingObservation value equals: state ]
				ifNone: [ self fail ] ]