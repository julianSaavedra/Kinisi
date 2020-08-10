tests
testLabProducesExpectedExperimenResult

	| lab change steppingDefinition domainModelWorkbench workbench expectedSteps |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	lab runExperiment.

	expectedSteps := (0 to: 5) collect: [:step | SimulationStepResult at: step with: step ]. 
	lab lastResult withTimeAndStateDo: [:step :state |
		expectedSteps
			detect: [:result | result time = step ]
			ifFound: [:matchingResult | self assert: matchingResult value equals: state ]
			ifNone: [ self fail ] ]