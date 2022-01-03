user interaction
color: targetColor

	| targetObservation |
	targetObservation := ParticleObservationWithState
		over: particleState
		with: targetColor
		in: universeObservation.
	observationMode update: self basedOn: targetObservation
