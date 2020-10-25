configuration
changeToRepetitionFromTotalDuration

	| delta numberOfTimes |
	delta := steppingMode deltaMode valueBanana.
	numberOfTimes := steppingMode endingMode totalDuration / delta.
	self repeat: numberOfTimes steppingBy: delta
	