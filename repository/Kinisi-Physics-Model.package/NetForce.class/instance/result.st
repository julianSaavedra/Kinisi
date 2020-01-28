accessing
result

	^causingParticlesPhysicalStates
		inject: self nullForce
		into: [:netForce :aPhysicalState | 
			netForce + (Interaction
							overParticleWith: overParticlePhysicalState
							causedByParticleWith: aPhysicalState) result ]