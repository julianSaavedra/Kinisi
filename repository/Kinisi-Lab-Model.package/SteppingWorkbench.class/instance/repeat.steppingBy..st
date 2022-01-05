configuration
repeat: numberOfTimes steppingBy: delta
 
	| endingMode |
	endingMode := RepetitionEndingMode with: numberOfTimes.
	self stepWith: delta and: endingMode