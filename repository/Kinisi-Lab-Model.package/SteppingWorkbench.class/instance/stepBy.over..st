configuration
stepBy: delta over: totalDuration

	| endingMode |
	endingMode := TotalDurationEndingMode with: totalDuration.
	self stepWith: delta and: endingMode