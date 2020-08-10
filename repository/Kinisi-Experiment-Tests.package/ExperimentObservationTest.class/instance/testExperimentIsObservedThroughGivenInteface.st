tests
testExperimentIsObservedThroughGivenInteface

	| observations observationIsFinished workbench lab interfaceSpec change steppingDefinition domainModelWorkbench |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	observations := OrderedCollection new.
	observationIsFinished := Semaphore new.
	interfaceSpec := PluggableInterfaceSpec
		with: [:observation | observations add: observation ]
		andWhenFinishedDo: [ observationIsFinished signal].

	workbench observationAdd: interfaceSpec.
	workbench observationPeriod: (Duration milliSeconds: 100).
	lab runExperiment.

	[observationIsFinished wait] valueWithin: 2 seconds onTimeout: [ self fail ].
	lab lastResult withTimeAndStateDo: [:time :state |
		observations
			detect: [:observation | observation time = time ]
			ifFound: [:matchingObservation | self assert: matchingObservation value equals: state ]
			ifNone: [ self fail ] ]