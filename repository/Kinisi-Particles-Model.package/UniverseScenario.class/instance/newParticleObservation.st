configuring
newParticleObservation

	| newObservation newParticle |
	newParticle := (ParticleCreator for: self) creation.
	newObservation := ParticleScenario for: newParticle in: self.
	universeState := universeState add: newObservation.
	
	^newObservation