change
changeFromRepetition: helper to: workbench

	| delta totalDuration |
	delta := workbench deltaMode valueBanana.
	totalDuration := workbench endingMode numberOfRepetitions * delta.
	workbench stepBy: delta over: totalDuration