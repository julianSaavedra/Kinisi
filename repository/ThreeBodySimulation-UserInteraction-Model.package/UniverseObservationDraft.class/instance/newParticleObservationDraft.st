accessing
newParticleObservationDraft

	| newParticleDraft |
	newParticleDraft := ParticleObservationDraft
		withName: nameGenerator next
		position: positionGenerator next
		insideOf: self.

	particleDrafts add: newParticleDraft.
	
	^newParticleDraft 