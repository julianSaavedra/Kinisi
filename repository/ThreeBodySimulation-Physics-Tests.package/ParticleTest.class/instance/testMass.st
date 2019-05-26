tests
testMass

	| mass particle |
	mass := testResource oneKilogram.	
	particle := Particle named: #ParticleA with: (testResource physicalStateWith: mass).
	
	self assert: particle mass equals: mass