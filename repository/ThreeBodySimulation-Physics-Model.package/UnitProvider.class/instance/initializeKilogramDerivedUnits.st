initialization
initializeKilogramDerivedUnits

	| kilogram |
	kilogram := self kilogram.
	unitDictionary
		at: self gramName
		put: (ProportionalDerivedUnit
				baseUnit: kilogram
				conversionFactor: 10e-3
				named: self gramName asString
				sign: 'gr');
		at: self metricTonName
		put: (ProportionalDerivedUnit
				baseUnit: kilogram
				conversionFactor: 1000
				named: self metricTonName asString
				sign: 't')