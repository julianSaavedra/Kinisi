as yet unclassified
color: targetColor
 
	| targetObservation |
	targetObservation := ParticleObservation over: particleState with: targetColor in: universeObservation.
	universeObservation update: self basedOn: targetObservation.
	color := targetColor.