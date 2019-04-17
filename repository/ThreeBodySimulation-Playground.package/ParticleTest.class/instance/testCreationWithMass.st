tests
testCreationWithMass

	| particle kilogram tenKilograms |
	kilogram := BaseUnit named: 'Kilogram' sign: 'Kg'.
	tenKilograms := kilogram with: 10.
	
	particle := Particle withMass: tenKilograms.
	
	self assert: particle mass equals: tenKilograms