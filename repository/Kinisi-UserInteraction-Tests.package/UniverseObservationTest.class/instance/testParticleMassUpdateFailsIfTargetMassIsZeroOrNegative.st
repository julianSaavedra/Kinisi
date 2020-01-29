tests
testParticleMassUpdateFailsIfTargetMassIsZeroOrNegative

	| particleObservation originalMass |
	particleObservation := self universeObservationWithOneObservation particles first.
	originalMass := particleObservation mass.
	
	self
		should: [particleObservation mass: originalMass * 0]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Mass cannot be negative or zero'.

	self
		should: [particleObservation mass: originalMass * -1]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Mass cannot be negative or zero'.
		
	self assert: particleObservation mass equals: originalMass