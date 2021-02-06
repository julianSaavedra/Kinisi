tests
testTerminatingObservationAfterTerminationShouldNotProducedAnyError

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	observationProcess terminate.
	
	self
		shouldnt: [ observationProcess terminate ]
		raise: Error