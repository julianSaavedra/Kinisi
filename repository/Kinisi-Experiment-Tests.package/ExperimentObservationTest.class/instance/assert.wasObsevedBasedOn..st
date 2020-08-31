asserting
assert: result wasObsevedBasedOn: interfaceDefinition

	| observations |
	observations := self recordedObservationsFor: interfaceDefinition.
	result withTimeAndStateDo: [ :time :state | 
		observations
			detect: [:observation | observation time = time ]
			ifFound:[:matchingObservation | self assert: matchingObservation value equals: state ]
			ifNone: [ self fail ] ]