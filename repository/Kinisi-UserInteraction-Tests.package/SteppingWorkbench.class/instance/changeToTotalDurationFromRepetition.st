configuration
changeToTotalDurationFromRepetition

	| delta totalDuration |
	delta := steppingMode deltaMode valueBanana.
	totalDuration := delta * steppingMode endingMode numberOfRepetitions.
	self stepBy: delta over: totalDuration