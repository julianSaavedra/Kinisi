user interaction
color: targetColor

	| targetObservation |
	targetObservation := ParticleObservation
		over: particleState
		with: targetColor
		in: universeObservation.
	observationMode update: self basedOn: targetObservation
