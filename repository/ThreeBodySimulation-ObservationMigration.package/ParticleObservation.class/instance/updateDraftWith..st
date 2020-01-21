private - updating
updateDraftWith: targetParticleObservation

	self assertValidityInTargetUniverseObservationOf: targetParticleObservation.
	particleState := targetParticleObservation particleState.
	color := targetParticleObservation color