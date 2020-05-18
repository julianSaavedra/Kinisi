support
tickDelayForAllRemainingData

	| remainingData |
	remainingData := allDataToBeObserved difference: observedData.
	self tickDelayForAll: remainingData