tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| definition experiment interface observationsTimes oneHundredMilliseconds timesBetweenObservations |
	observationsTimes := OrderedCollection new.
	oneHundredMilliseconds := Duration milliSeconds: 100.
	interface := PluggableObservationInterface processWith: [:observation | observationsTimes add: DateAndTime now ].
	definition := ExperimentDefinition
		basedOn: 0
		changingWith: [:step :currentState | currentState + 1 ]
		over: 1
		until: 5
		observingBasedOn: (ObservationDefinition for: interface every: oneHundredMilliseconds).
	experiment := Experiment basedOn: definition.

	experiment run.

	timesBetweenObservations := observationsTimes overlappingPairsCollect: [:anObservationTime :nextObservationTime | nextObservationTime - anObservationTime  ].
	self assert: (1 - (timesBetweenObservations average / oneHundredMilliseconds) < 0.05)