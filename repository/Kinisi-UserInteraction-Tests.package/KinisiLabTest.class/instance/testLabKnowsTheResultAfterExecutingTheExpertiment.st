tests
testLabKnowsTheResultAfterExecutingTheExpertiment

	| expectedSteps lab exprimentResult workbench experimentDefinition observationDefinition observationHasFinished interface |
	expectedSteps := (0 to: 5)
		collect: [ :step | SimulationStepResult at: step with: (2 raisedTo: step) ].
	interface := PluggableObservationInterface
		processWith: [:observation | ]
		andWhenFinishedDo: [ observationHasFinished := true ].
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
	[[ observationHasFinished ] whileFalse]
		valueWithin: (Duration seconds: 2) onTimeout: [ self fail ].
		
	exprimentResult := lab lastResult.

	exprimentResult
		withTimeAndStateDo: [ :experimentStep :experimentState | 
			expectedSteps
				detect: [ :stepResult | stepResult time = experimentStep ]
				ifFound: [ :matchingStepResult | matchingStepResult value = experimentState ]
				ifNone: [ self fail ] ]