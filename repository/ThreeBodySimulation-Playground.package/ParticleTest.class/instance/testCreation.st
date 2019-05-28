tests
testCreation

	| particle |
	particle := Particle named: #ParticleA with: self defaultPhysicalState.
	
	self assert: particle name equals: #ParticleA