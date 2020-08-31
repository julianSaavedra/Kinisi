configuring
newParticleObservation

	| newObservation newParticle |
	newParticle := (ParticleCreator for: self) creation.
	newObservation := ParticleObservation for: newParticle in: self.
	universeState := universeState add: newObservation.
	
	^newObservation