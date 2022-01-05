adjusting
increaseBy: increment
 
	| newScaling |
	newScaling := (0 max: scaling + increment) min: 1.
	^FeatureScaling atPercentage: newScaling