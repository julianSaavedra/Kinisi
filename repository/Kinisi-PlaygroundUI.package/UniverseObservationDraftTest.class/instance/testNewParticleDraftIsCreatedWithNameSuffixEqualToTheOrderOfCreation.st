tests
testNewParticleDraftIsCreatedWithNameSuffixEqualToTheOrderOfCreation

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
		
	self
		assert: universeDraft newParticleObservation particleName
		equals: #Particle1.
	
	self
		assert: universeDraft newParticleObservation particleName
		equals: #Particle2.
	
	self
		assert: universeDraft newParticleObservation particleName
		equals: #Particle3