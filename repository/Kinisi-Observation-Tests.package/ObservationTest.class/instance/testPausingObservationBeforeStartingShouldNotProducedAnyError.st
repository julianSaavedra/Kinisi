tests
testPausingObservationBeforeStartingShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interface waiting: delay.
	
	self
		shouldnt: [ observationProcess pause ]
		raise: Error