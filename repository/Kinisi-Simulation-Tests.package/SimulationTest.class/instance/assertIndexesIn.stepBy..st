asserting
assertIndexesIn: result stepBy: stepDelta

	| indexes |
	indexes := result withTimeAndStateCollect: [ :time :state | time ].
	self assert: indexes first isZero.
	indexes overlappingPairsDo: [ :step :followingStep |
		self assert: followingStep - step equals: stepDelta ]