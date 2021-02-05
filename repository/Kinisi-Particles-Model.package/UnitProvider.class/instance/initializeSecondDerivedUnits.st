initialization
initializeSecondDerivedUnits

	| second |
	second := self second.
	unitDictionary
		at: self minuteName
		put: (ProportionalDerivedUnit
				baseUnit: second
				conversionFactor: 60
				named: self minuteName asString
				sign: 'm');
		at: self hourName
		put: (ProportionalDerivedUnit
				baseUnit: second
				conversionFactor: (60 * 60)
				named: self hourName asString
				sign: 'h');
		at: self dayName
		put: (ProportionalDerivedUnit
				baseUnit: second
				conversionFactor: (60 * 60 * 24)
				named: self dayName asString
				sign: 'd')