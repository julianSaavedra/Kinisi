change
changeFromRepetition: helper to: workbench

	| delta totalDuration |
	delta := workbench delta.
	totalDuration := workbench endingMode numberOfRepetitions * delta.
	workbench stepBy: delta over: totalDuration