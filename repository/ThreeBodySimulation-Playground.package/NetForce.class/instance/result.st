accessing
result

	^causingParticlesPhysicalStates
		inject: (MeasureVector nullWith: UnitProvider soleInstance newton)
		into: [:netForce :aPhysicalState |
			netForce + (Interaction
				overParticleWith: overParticlePhysicalState
				causedByParticleWith: aPhysicalState) result ]