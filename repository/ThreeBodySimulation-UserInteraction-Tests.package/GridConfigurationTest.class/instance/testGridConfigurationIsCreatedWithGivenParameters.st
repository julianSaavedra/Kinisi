tests
testGridConfigurationIsCreatedWithGivenParameters

	| twentyReciprocalMeter configuration |
	twentyReciprocalMeter := 20 / meter.
	configuration := GridConfiguration
		withColor: red
		size: 100
		andScale: twentyReciprocalMeter.

	self assert: configuration color equals: red.
	self assert: configuration size equals: 100.
	self
		assert: configuration scale
		equals: twentyReciprocalMeter