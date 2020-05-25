tests
testTerminatingObservationAfterTerminationShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interface waiting: delay.
	observationProcess terminate.
	
	self
		shouldnt: [ observationProcess terminate ]
		raise: Error