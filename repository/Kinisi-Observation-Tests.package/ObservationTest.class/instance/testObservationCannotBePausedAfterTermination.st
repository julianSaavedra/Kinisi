tests
testObservationCannotBePausedAfterTermination

	| monitoring |
	monitoring := KinisiObservation on: source with: interface waiting: delay.
	monitoring terminate.
	
	self
		should: [ monitoring pause ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'