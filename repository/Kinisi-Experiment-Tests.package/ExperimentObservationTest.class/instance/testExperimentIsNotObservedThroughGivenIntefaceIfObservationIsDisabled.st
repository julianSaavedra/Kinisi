tests
testExperimentIsNotObservedThroughGivenIntefaceIfObservationIsDisabled

	| definition experiment interface observations observationDefinition |
	observations := OrderedCollection new.
	interface := PluggableObservationInterface processWith: [:observation | observations add: observation ].
	observationDefinition := ObservationDefinition for: interface every: (Duration milliSeconds: 100).
	definition := ExperimentDefinition
		startingAt: 0
		changingWith: (SimulationStateChange with: [ :currentState | currentState + 1 ])
		simulatingBasedOn: (SteppingDefinition repeat: 5)
		observingBasedOn: observationDefinition disableAll.

	experiment := Experiment basedOn: definition.

	experiment run.

	self assertEmpty: observations