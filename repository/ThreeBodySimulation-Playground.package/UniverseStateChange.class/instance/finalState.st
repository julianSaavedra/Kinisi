as yet unclassified
finalState

	| originalParticles finalParticles |
	originalParticles := originalState particles.

	finalParticles := originalParticles collect: [:aParticle | aParticle].

	^ObservableUniverseState with: originalParticles