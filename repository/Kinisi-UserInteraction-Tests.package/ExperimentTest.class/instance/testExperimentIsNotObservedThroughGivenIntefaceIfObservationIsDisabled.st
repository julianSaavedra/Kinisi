tests
testExperimentIsNotObservedThroughGivenIntefaceIfObservationIsDisabled

	| definition experiment interface observations observationDefinition |
	observations := OrderedCollection new.
	interface := PluggableObservationInterface processWith: [:observation | observations add: observation ].
	observationDefinition := ObservationDefinition for: interface every: (Duration milliSeconds: 100).
	definition := ExperimentDefinition
		basedOn: 0
		changingWith: [:step :currentState | currentState + 1 ]
		over: 1
		until: 5
		observingBasedOn: observationDefinition disableAll.

	experiment := Experiment basedOn: definition.

	experiment run.

	self assertEmpty: observations