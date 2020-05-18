tests
testTerminatingObservationAfterTerminationShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiObservation on: source with: interface waiting: delay.
	monitoring terminate.
	
	self
		shouldnt: [ monitoring terminate ]
		raise: Error