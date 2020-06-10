tests
testLabKnowsTheResultAfterExecutingTheExpertiment

	| expectedSteps lab exprimentResult |
	expectedSteps := (0 to: 5) collect: [:step | SimulationStepResult at: step with: (2 raisedTo: step)].
	lab := KinisiLab new.

	lab performExperiment.
	
	exprimentResult := lab lastResult.
	
	exprimentResult withTimeAndStateDo: [:experimentStep :experimentState |
		expectedSteps
			detect: [:stepResult | stepResult time = experimentStep ]
			ifFound: [:matchingStepResult | matchingStepResult value = experimentState ]
			ifNone: [ self fail ]
		]