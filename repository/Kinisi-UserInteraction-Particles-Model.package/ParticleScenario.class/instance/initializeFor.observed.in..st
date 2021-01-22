initialization
initializeFor: observedParticle observed: observedColor in: observedUniverse
 
	particle := observedParticle.
	color := observedColor.
	universeObservation := observedUniverse.
	wasRemoved := false.
	isVisible := true.
	changeSpecifications := Dictionary new