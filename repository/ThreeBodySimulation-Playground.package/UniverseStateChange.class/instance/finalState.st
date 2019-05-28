accessing
finalState

	| originalPhysicalStates finalPhysicalStates |
	originalPhysicalStates := originalState physicalStates.

	finalPhysicalStates := originalState physicalStates collect: [:aPhysicalState |
		| netForce physicalStateChange |
		netForce := NetForce overParticleWith: aPhysicalState causedByParticlesWithAll: (originalPhysicalStates copyWithout: aPhysicalState).
		physicalStateChange := PhysicalStateChange of: aPhysicalState during: deltaTime perceiving: netForce result.
		physicalStateChange finalState
		].

	^ObservableUniverseState with: finalPhysicalStates