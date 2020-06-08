tests
testPausingObservationWhenItIsPausedShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interface waiting: delay.
	observationProcess play; pause.
	
	self
		shouldnt: [ observationProcess pause ]
		raise: Error