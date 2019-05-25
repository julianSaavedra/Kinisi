tests
testPhysicalState

	| position physicalState particle |
	position := testResource oneMeterInAllComponentsVector.
	physicalState :=  self physicalStateWithPosition: position.
	particle := Particle named: #ParticleA with: physicalState.
	
	self assert: particle physicalState equals: physicalState