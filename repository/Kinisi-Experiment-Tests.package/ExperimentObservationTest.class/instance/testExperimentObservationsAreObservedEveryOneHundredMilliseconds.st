tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| definition experiment interface observationsTimes oneHundredMilliseconds timesBetweenObservations observationIsFinished |
	observationsTimes := OrderedCollection new.
	oneHundredMilliseconds := Duration milliSeconds: 100.
	observationIsFinished := Semaphore new.
	interface := PluggableObservationInterface
		processWith: [:observation | observationsTimes add: DateAndTime now ]
		andWhenFinishedDo: [ observationIsFinished signal].
	definition := ExperimentDefinition
		startingAt: 0
		changingWith: (SimulationStateChange with: [ :currentState | currentState + 1 ])
		simulatingBasedOn: (SteppingDefinition repeat: 5)
		observingBasedOn: (ObservationDefinition for: interface every: oneHundredMilliseconds).
	experiment := Experiment basedOn: definition.

	experiment run.

	
	observationIsFinished wait.
	timesBetweenObservations := observationsTimes overlappingPairsCollect: [:anObservationTime :nextObservationTime | nextObservationTime - anObservationTime  ].
	self assert: (1 - (timesBetweenObservations average / oneHundredMilliseconds) < 0.05)