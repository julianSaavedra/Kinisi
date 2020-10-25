configuration
stepBy: delta over: totalDuration

	| endingMode |
	endingMode := TotalDurationEndingMode with: totalDuration.
	steppingMode := SteppingMode with: delta and: endingMode