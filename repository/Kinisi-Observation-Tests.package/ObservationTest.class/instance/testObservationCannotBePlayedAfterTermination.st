tests
testObservationCannotBePlayedAfterTermination

	| monitoring |
	monitoring := KinisiObservation on: source with: interface waiting: delay.
	monitoring terminate.
	
	self
		should: [ monitoring play ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'