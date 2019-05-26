tests
testPhysicalState

	| physicalState particle |
	physicalState := self defaultPhysicalState.
	particle := Particle named: #ParticleA with: physicalState.
	
	self assert: particle physicalState equals: physicalState