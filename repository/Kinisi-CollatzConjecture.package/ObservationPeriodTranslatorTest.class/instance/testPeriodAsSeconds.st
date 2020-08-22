tests
testPeriodAsSeconds

	| translation |
	translation := ObservationPeriodTranslator toSeconds.
	
	self assert: (translation translate: 10) equals: 10 asSeconds