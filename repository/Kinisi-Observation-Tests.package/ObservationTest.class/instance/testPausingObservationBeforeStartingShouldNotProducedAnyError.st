tests
testPausingObservationBeforeStartingShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiObservation on: source with: interface waiting: delay.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error