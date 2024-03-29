tests
testLabProducesExpectedExperimenResult

	| lab workbench expectedSteps |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	lab := KinisiLab using: workbench.

	self runExperimentUntilHasFinishedIn: lab.

	expectedSteps := #(5 16 8 4 2 1) with: (0 to: 5) collect: [:state :step | SimulationStepResult at: step with: (CollatzConjectureState with: state) ]. 
	lab lastResult withTimeAndStateDo: [:step :state |
		expectedSteps
			detect: [:result | result time = step ]
			ifFound: [:matchingResult | self assert: matchingResult value equals: state ]
			ifNone: [ self fail ] ]