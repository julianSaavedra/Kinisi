tests
testPosition

	| position particle |
	position := testResource oneMeterInAllComponentsVector.
	particle := Particle named: #ParticleA with: (self physicalStateWithPosition: position).
	
	self assert: particle position equals: position