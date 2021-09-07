tests
testPeriodInSecondsIsRecognizeInProperUnits

	| translator twoSeconds |
	twoSeconds := Duration seconds: 2.
	
	translator := ObservationPeriodTranslator basedOn: twoSeconds.
	
	self assert: (translator translate: 10) equals: (Duration seconds: 10)