tests
testPeriodAsMilliseconds

	| translator |
	translator := ObservationPeriodTranslator toMilliseconds.

	self assert: translator unitName equals: 'Milliseconds'.
	self assert: (translator translate: 100) equals: (Duration milliSeconds: 100)