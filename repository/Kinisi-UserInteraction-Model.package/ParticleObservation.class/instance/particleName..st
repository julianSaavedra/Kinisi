configuring
particleName: targetParticleName

	self updateStateWith: [:currentState | currentState name: targetParticleName ].
	particleName := targetParticleName