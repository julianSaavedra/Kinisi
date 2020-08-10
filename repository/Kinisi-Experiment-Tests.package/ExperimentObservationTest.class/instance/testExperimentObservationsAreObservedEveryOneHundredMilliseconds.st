tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| observationsTimes oneHundredMilliseconds timesBetweenObservations observationIsFinished steppingDefinition domainModelWorkbench workbench lab interfaceSpec change |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	observationsTimes := OrderedCollection new.
	oneHundredMilliseconds := Duration milliSeconds: 100.
	observationIsFinished := Semaphore new.
	interfaceSpec := PluggableInterfaceSpec
		with: [:observation | observationsTimes add: DateAndTime now ]
		andWhenFinishedDo: [ observationIsFinished signal].
	
	workbench observationAdd: interfaceSpec.
	workbench observationPeriod: oneHundredMilliseconds.
	
	lab runExperiment.

	[observationIsFinished wait] valueWithin: 2 seconds onTimeout: [ self fail ].
	timesBetweenObservations := observationsTimes overlappingPairsCollect: [:anObservationTime :nextObservationTime | nextObservationTime - anObservationTime  ].
	self assert: (1 - (timesBetweenObservations average / oneHundredMilliseconds) < 0.05)