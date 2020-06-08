asserting
assertAverageMilliSecondsBetween: receivedDataTimes is: periodInMilliSeconds withinPercentage: tolerance

	| milliSecondsBetweenResults averageDifference startTimes endTimes |
	startTimes := receivedDataTimes allButLast.
	endTimes := receivedDataTimes allButFirst.
	milliSecondsBetweenResults := startTimes with: endTimes collect: [:startTime :endTime |
			endTime asMilliSeconds - startTime asMilliSeconds ].

	averageDifference := (milliSecondsBetweenResults average - periodInMilliSeconds) abs.
	self assert: averageDifference / periodInMilliSeconds <= tolerance percent