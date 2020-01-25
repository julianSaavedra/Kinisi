accessing
finalState

	| originalPhysicalStates finalPhysicalStates |
	originalPhysicalStates := originalState particles.

	finalPhysicalStates := originalState particles collect: [:aPhysicalState |
		| netForce physicalStateChange |
		netForce := NetForce overParticleWith: aPhysicalState causedByParticlesWithAll: (originalPhysicalStates copyWithout: aPhysicalState).
		physicalStateChange := PhysicalStateChange of: aPhysicalState during: deltaTime perceiving: netForce result.
		physicalStateChange finalState
		].

	^ObservableUniverseState withAll: finalPhysicalStates