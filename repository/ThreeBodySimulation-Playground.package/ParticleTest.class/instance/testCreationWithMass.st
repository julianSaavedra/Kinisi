tests
testCreationWithMass

	| particle tenKilograms |
	tenKilograms := UnitProvider soleInstance kilogram with: 10.
	
	particle := Particle withMass: tenKilograms.
	
	self assert: particle mass equals: tenKilograms