tests
testTenParticlesAreCreatedWithParticleNamesNotBeingUsedInUniverseObservationAlready

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| existingParticles existingNames lastParticle |
		existingParticles := universeObservation particles.
		existingNames := existingParticles collect: [:particle | particle particleName ].
		lastParticle := universeObservation newParticleObservation.
		self deny: (existingNames includes: lastParticle particleName)
	 ]