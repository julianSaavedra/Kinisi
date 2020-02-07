tests
testTenParticlesAreCreatedWithPositionsNotBeingOccupiedInUniverseObservationAlready

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| existingParticles unavailablePositions lastParticle |
		existingParticles := universeObservation particles.
		unavailablePositions := existingParticles collect: [:particleState | particleState position ].
		lastParticle := universeObservation newParticleObservation.
		self deny: (unavailablePositions includes: lastParticle position) ]