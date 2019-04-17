initialization
initializeUnitDictionary

	unitDictionary := Dictionary new.
	unitDictionary
		at: self newtonName put: (BaseUnit named: 'Newton' sign: 'N');
		at: self secondName put: (BaseUnit named: 'Second' sign: 's');
		at: self meterName put: (BaseUnit named: 'Meter' sign: 'm');
		at: self milimeterName
			put:
			(ProportionalDerivedUnit
				baseUnit: (unitDictionary at: self meterName)
				conversionFactor: 1 / 1000
				named: 'Milimeter')