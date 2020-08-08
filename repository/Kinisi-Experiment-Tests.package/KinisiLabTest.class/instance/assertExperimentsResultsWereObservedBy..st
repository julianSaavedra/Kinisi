asserting
assertExperimentsResultsWereObservedBy: interface

	| expectedResults |
	expectedResults := self expectedExperimentResult.
	interface observations do:[ :observation |
			self
				assert: expectedResults
				containsResultAt: observation time
				with: observation value ]