private - updating
updateUniverseWith: targetParticleObservation

	universeObservation update: self basedOn: targetParticleObservation.
	particleState := targetParticleObservation particleState.
	color := targetParticleObservation color