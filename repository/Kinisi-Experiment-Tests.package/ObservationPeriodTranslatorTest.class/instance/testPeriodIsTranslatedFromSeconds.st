tests
testPeriodIsTranslatedFromSeconds

	| translator twoSeconds |
	twoSeconds := Duration seconds: 2.
	
	translator := ObservationPeriodTranslator basedOn: twoSeconds.
	
	self assert: (translator translateFrom: twoSeconds) equals: 2.
	self assert: (translator translateFrom: (Duration milliSeconds: 153)) equals: 0.153
	