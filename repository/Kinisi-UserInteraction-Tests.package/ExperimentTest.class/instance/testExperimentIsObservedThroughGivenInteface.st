tests
testExperimentIsObservedThroughGivenInteface

	| definition experiment interface observations |
	observations := OrderedCollection new.
	interface := PluggableObservationInterface processWith: [:observation | observations add: observation ].
	definition := ExperimentDefinition
		startingAt: 0
		changingWith: [:currentStep :currentState | currentState + 1 ]
		simulatingBasedOn: (BANANASteppingMode delta: 1 until: 5)
		observingBasedOn: (ObservationDefinition for: interface every: (Duration milliSeconds: 100)).
	experiment := Experiment basedOn: definition.

	experiment run.

	experiment result withTimeAndStateDo: [:time :state |
		observations
			detect: [:observation | observation time = time ]
			ifFound: [:matchingObservation | self assert: matchingObservation value equals: state ]
			ifNone: [ self fail ] ]