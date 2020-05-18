tests
testPausingObservationWhenItIsPuasedShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiObservation on: source with: interface waiting: delay.
	monitoring play; pause.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error