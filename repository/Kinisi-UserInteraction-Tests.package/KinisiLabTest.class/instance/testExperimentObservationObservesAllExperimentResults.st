tests
testExperimentObservationObservesAllExperimentResults

	| expectedSteps lab workbench experimentDefinition observations observationHasFinished interface observationDefinition |
	interface := PluggableObservationInterface
		onStartDo: [ observations := OrderedCollection new ]
		processWith: [:observation | observations add: observation ]
		andWhenFinishedDo: [ observationHasFinished := true ].
	expectedSteps := (0 to: 5)
		collect: [ :step | SimulationStepResult at: step with: (2 raisedTo: step) ].
	observationDefinition := ObservationDefinition fixedWith: interface.
	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [ :step :currentState | currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: observationDefinition.
	workbench := LabWorkbench fixedWith: experimentDefinition.
	lab := KinisiLab using: workbench.

	observationHasFinished := false.
	lab performExperiment.
	[ [ observationHasFinished ] whileFalse ]
		valueWithin: (Duration seconds: 2)
		onTimeout: [ self fail ].

	observations
		do: [ :observation | 
			expectedSteps
				detect: [ :stepResult | stepResult time = observation time ]
				ifFound: [ :matchingStepResult | matchingStepResult value = observation value ]
				ifNone: [ self fail ] ]