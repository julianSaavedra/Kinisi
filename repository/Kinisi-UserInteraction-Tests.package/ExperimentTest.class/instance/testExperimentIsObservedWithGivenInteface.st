tests
testExperimentIsObservedWithGivenInteface

	| definition experiment interface observations |
	observations := OrderedCollection new.
	interface := PluggableObservationInterface processWith: [:observation | observations add: observation ].
	definition := ExperimentDefinition
		basedOn: 0
		changingWith: [:step :currentState | currentState + 1 ]
		over: 1
		until: 5
		observingBasedOn: (ObservationDefinition fixedWith: interface).
	experiment := Experiment basedOn: definition.

	experiment run.

	experiment result withTimeAndStateDo: [:time :state |
		observations
			detect: [:observation | observation time = time ]
			ifFound: [:matchingObservation | self assert: matchingObservation value equals: state ]
			ifNone: [ self fail ] ]