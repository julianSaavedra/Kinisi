initialization
initializeStartingAt: anInitialState changingWith: aChange simulatingBasedOn: anSteppingMode observingBasedOn: anObservationDefinition

	scenario := anInitialState.
	change := aChange.
	steppingDefinition := anSteppingMode.
	observationDefinition := anObservationDefinition