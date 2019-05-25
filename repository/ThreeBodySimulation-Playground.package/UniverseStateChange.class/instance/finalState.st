as yet unclassified
finalState

	| originalParticles finalParticles |
	originalParticles := originalState particles.

	finalParticles := originalParticles collect: [:aParticle |
		| netForce physicalStateChange |
		netForce := NetForce over: aParticle causedByAll: (originalParticles copyWithout: aParticle).
		physicalStateChange := PhysicalStateChange of: aParticle physicalState during: deltaTime perceiving: netForce result.
		Particle named: aParticle name with: physicalStateChange finalState
		].

	^ObservableUniverseState with: finalParticles