asserting
assertTimeBetweenObservationFor: interfaceDefinition isInAverage: oneHundredMilliseconds with: tolerancePercentage

	| timesBetweenObservationAverage tolerance porcentualDifference |
	timesBetweenObservationAverage := self averageTimesBetweenObservationsFor: interfaceDefinition.
	porcentualDifference := 1 - (timesBetweenObservationAverage / oneHundredMilliseconds) abs.
	tolerance := tolerancePercentage / 100.
	self assert: porcentualDifference < tolerance