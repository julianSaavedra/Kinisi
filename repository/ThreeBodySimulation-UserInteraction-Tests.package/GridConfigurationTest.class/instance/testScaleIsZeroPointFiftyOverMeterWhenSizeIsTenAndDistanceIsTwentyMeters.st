tests
testScaleIsZeroPointFiftyOverMeterWhenSizeIsTenAndDistanceIsTwentyMeters

	| configuration |
	configuration := GridConfiguration
		withColor: red
		size: 10
		andDistance: (meter with: 20).

	self assert: configuration scale equals: 0.5 / meter