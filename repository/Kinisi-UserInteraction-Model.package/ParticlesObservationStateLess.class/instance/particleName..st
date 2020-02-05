as yet unclassified
particleName: targetParticleName

	universeObservation updateStateFor: self with: [:currentState | currentState particleName: targetParticleName ].
	particleName := targetParticleName