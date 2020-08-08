asserting
assertLastIndexIn: results is: tenSeconds

	| resultTimes |

	resultTimes := results
		withTimeAndStateCollect: [ :time :state | time ].
	self assert: resultTimes last equals: tenSeconds