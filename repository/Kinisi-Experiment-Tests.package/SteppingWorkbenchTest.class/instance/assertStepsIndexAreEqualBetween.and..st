tests
assertStepsIndexAreEqualBetween: result and: firstRepetitionModeResult

	| firstRepetitionModeTimes secondRepetitionModeTimes |

	firstRepetitionModeTimes := firstRepetitionModeResult
		withTimeAndStateCollect: [ :time :state | time ].
	secondRepetitionModeTimes := result
		withTimeAndStateCollect: [ :time :state | time ].

	self
		assert: firstRepetitionModeTimes
		equals: secondRepetitionModeTimes