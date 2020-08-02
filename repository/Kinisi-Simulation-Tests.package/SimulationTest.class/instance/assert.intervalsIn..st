asserting
assert: repetitions intervalsIn: result

	| indexes intervals |

	indexes := result withTimeAndStateCollect: [ :time :state | time ].
	intervals := 0.
	indexes
		overlappingPairsDo: [ :step :followingStep | intervals := intervals + 1 ].
	self assert: intervals equals: repetitions