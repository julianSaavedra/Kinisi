initialization
initializeMeterDerivedUnits

	| meter |
	meter := self meter.
	unitDictionary
		at: self milimeterName
		put: (ProportionalDerivedUnit
				baseUnit: meter
				conversionFactor: 1 / 1000
				named: self milimeterName asString
				sign: 'mm');
		at: self kilometerName
		put: (ProportionalDerivedUnit
				baseUnit: meter
				conversionFactor: 1000
				named: self kilometerName asString
				sign: 'Km')