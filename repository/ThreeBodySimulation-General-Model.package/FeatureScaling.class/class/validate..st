validation
validate: targetScaling

	(targetScaling between: self minimunPercentage and: self maximunPercentage)
		ifFalse: [ Error signal: 'Scaling must be within 0 and 1' ] 