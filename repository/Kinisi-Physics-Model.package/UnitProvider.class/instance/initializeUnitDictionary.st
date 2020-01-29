initialization
initializeUnitDictionary

	unitDictionary := Dictionary new.
	unitDictionary
		at: self meterName put: (BaseUnit named: self meterName asString sign: 'm');
		at: self secondName put: (BaseUnit named: self secondName asString sign: 's');
		at: self kilogramName put: (BaseUnit named: self kilogramName asString sign: 'kg').
	self initializeMeterDerivedUnits.
	self initializeSecondDerivedUnits.
	self initializeKilogramDerivedUnits.
	self initializeCompoundUnits
	
	
