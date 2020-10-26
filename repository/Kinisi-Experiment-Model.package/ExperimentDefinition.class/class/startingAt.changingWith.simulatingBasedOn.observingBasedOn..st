instance creation
startingAt: initialState changingWith: change simulatingBasedOn: steppingMode observingBasedOn: observationDefinition

	^self new
		initializeStartingAt: initialState
		changingWith: change
		simulatingBasedOn: steppingMode
		observingBasedOn: observationDefinition