support
stepResultsWithTimeBasedOn: timeAmounts andResultsBasedOn: results

	^timeAmounts with: results collect: [:timeAmount :aResult |
		SimulationStepResult at: timeAmount with: aResult]