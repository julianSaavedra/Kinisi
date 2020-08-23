tests
testPeriodAsMilliseconds

	| translation |
	translation := ObservationPeriodTranslator toMilliseconds.
	
	self assert: (translation translate: 100) equals: (Duration milliSeconds: 100)