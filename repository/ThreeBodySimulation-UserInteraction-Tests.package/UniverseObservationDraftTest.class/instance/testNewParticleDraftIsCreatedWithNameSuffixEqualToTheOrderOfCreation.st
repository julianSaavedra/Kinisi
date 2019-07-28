tests
testNewParticleDraftIsCreatedWithNameSuffixEqualToTheOrderOfCreation

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
		
	self
		assert: universeDraft newParticleObservationDraft particleName
		equals: #Particle1.
	
	self
		assert: universeDraft newParticleObservationDraft particleName
		equals: #Particle2.
	
	self
		assert: universeDraft newParticleObservationDraft particleName
		equals: #Particle3