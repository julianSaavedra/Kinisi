private
verticalTick

	| verticalTick |
	verticalTick := RSVerticalTick new
		                asFloat;
		                doNotUseNiceLabel;
		                fontSize: 5;
		                yourself.
	verticalTick numberOfTicks: (observationIndices size min: 4).
	^verticalTick