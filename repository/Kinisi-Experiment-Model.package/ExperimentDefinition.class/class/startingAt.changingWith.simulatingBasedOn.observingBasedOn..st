instance creation
startingAt: initialState changingWith: change simulatingBasedOn: steppingDefinition observingBasedOn: observationDefinition

	^self new
		initializeStartingAt: initialState
		changingWith: change
		simulatingBasedOn: steppingDefinition
		observingBasedOn: observationDefinition