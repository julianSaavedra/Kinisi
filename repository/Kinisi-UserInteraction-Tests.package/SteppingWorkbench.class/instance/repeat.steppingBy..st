configuration
repeat: numberOfTimes steppingBy: delta
 
	| endingMode |
	endingMode := RepetitionEndingMode with: numberOfTimes.
	steppingMode := SteppingMode with: delta and: endingMode