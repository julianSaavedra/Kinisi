support
stepResultsWithTimeInSecondsBasedOn: timeAmounts andResultsBasedOn: results

	| second |
	second := UnitProvider soleInstance second.
	^timeAmounts with: results collect: [:timeAmount :aResult |
		SimulationStepResult at: (second with: timeAmount) with: aResult]