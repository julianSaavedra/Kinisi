initialization
initializeUnitDictionary

	unitDictionary := Dictionary new.
	unitDictionary
		at: self newtonName put: (BaseUnit named: self newtonName asString sign: 'N');
		at: self secondName put: (BaseUnit named: self secondName asString sign: 's');
		at: self meterName put: (BaseUnit named: self meterName asString sign: 'm').
	self initializeMeterDerivedUnits
	