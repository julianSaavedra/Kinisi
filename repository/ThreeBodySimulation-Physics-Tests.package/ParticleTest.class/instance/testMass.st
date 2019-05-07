tests
testMass

	| mass particle |
	mass := testResource oneKilogram.	
	particle := Particle named: #ParticleA with: (self physicalStateWithMass: mass).
	
	self assert: particle mass equals: mass