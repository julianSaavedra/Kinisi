asserting
assertAverageMilliSecondsIn: receivedDataTimes is: periodInMilliSeconds withinPercentage: percentageTolerance

	| milliSecondsBetweenResults |

	receivedDataTimes removeFirst.
	milliSecondsBetweenResults := receivedDataTimes
		collect: [ :startAndEndTimePair | 
			startAndEndTimePair value asMilliSeconds
				- startAndEndTimePair key asMilliSeconds ].
	self
		assert:
			(milliSecondsBetweenResults average - periodInMilliSeconds) abs
				/ periodInMilliSeconds * 100 <= percentageTolerance