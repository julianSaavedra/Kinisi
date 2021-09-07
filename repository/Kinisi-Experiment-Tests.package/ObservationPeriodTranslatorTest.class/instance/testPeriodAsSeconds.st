tests
testPeriodAsSeconds

	| translator |
	translator := ObservationPeriodTranslator toSeconds.
	
	self assert: translator unitName equals: 'Seconds'.
	self assert: (translator translate: 10) equals: 10 asSeconds