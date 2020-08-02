tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| definition experiment interface observationsTimes oneHundredMilliseconds timesBetweenObservations |
	observationsTimes := OrderedCollection new.
	oneHundredMilliseconds := Duration milliSeconds: 100.
	interface := PluggableObservationInterface processWith: [:observation | observationsTimes add: DateAndTime now ].
	definition := ExperimentDefinition
		startingAt: 0
		changingWith: (SimulationStateChange with: [ :currentState | currentState + 1 ])
		simulatingBasedOn: (SteppingDefinition repeat: 5)
		observingBasedOn: (ObservationDefinition for: interface every: oneHundredMilliseconds).
	experiment := Experiment basedOn: definition.

	experiment run.

	timesBetweenObservations := observationsTimes overlappingPairsCollect: [:anObservationTime :nextObservationTime | nextObservationTime - anObservationTime  ].
	self assert: (1 - (timesBetweenObservations average / oneHundredMilliseconds) < 0.05)