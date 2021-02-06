tests
testPausingObservationBeforeStartingShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	
	self
		shouldnt: [ observationProcess pause ]
		raise: Error