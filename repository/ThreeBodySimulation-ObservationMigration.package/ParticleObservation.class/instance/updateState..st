private - updating
updateState: targetParticleState

	| targetObservation |
	targetObservation := ParticleObservation
		over: targetParticleState
		with: color
		in: universeObservation.
	observationMode update: self basedOn: targetObservation