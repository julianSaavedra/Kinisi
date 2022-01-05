tests
testPeriodIsTranslatedFromMilliseconds

	| translator oneHundredMilliseconds |
	oneHundredMilliseconds := Duration milliSeconds: 100.
	
	translator := ObservationPeriodTranslator basedOn: oneHundredMilliseconds.
	
	self assert: (translator translateFrom: oneHundredMilliseconds) equals: 100.
	self assert: (translator translateFrom: (Duration seconds: 2 nanoSeconds: 153e6)) equals: 2153
	