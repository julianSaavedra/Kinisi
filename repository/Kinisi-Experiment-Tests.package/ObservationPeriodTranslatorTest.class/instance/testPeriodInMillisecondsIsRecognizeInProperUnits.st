tests
testPeriodInMillisecondsIsRecognizeInProperUnits

	| translator oneHundredMilliseconds |
	oneHundredMilliseconds := Duration milliSeconds: 100.
	
	translator := ObservationPeriodTranslator basedOn: oneHundredMilliseconds.
	
	self assert: (translator translate: 250) equals: (Duration milliSeconds: 250)