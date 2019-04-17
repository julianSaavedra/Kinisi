tests
testCreationFromMeasuresInDifferentScales

	| milimeter kilometer |
	milimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: (1/1000) named: 'Milimeter'.
	kilometer := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1000 named: 'Kilometer'.
	
	self
		assert: (MeasureVector x: (meter with: 1) y: (milimeter with: 1) z: (kilometer with: 1))
		equals: (MeasureVector x: 1 y: 1/1000 z: 1000 with: meter)