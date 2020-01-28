tests
testGridConfigurationIsCreatedWithGivenParameters

	| twentyMeters configuration |
	twentyMeters := meter with: 20.
	configuration := GridConfiguration
		withColor: red
		size: 100
		andDistance: twentyMeters.

	self assert: configuration color equals: red.
	self assert: configuration size equals: 100.
	self assert: configuration distance equals: twentyMeters