asserting
assertLastResultIsAsExpectedFor: lab

	| expectedResults |
	expectedResults := self expectedExperimentResult.
	lab lastResult 
		withTimeAndStateDo: [:experimentStep :experimentState | 
			self
				assert: expectedResults
				containsResultAt: experimentStep
				with: experimentState ]