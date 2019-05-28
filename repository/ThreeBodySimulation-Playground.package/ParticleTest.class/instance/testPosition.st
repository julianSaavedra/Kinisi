tests
testPosition

	| position particle |
	position := testResource oneMeterInAllComponentsVector.
	particle := Particle named: #ParticleA with: (testResource physicalStateIn: position).
	
	self assert: particle position equals: position