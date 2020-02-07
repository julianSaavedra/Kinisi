private - updating
updateState: targetParticleState

	| targetObservation |
	targetObservation := ParticleObservationWithState
		over: targetParticleState
		with: color
		in: universeObservation.
	observationMode update: self basedOn: targetObservation