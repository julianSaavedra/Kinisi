tests
testPausingObservationWhenItIsPausedShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	observationProcess play; pause.
	
	self
		shouldnt: [ observationProcess pause ]
		raise: Error