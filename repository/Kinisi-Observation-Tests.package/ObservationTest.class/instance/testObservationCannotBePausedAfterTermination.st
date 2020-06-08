tests
testObservationCannotBePausedAfterTermination

	observationProcess := KinisiObservation on: source with: interface waiting: delay.
	observationProcess terminate.
	
	self
		should: [ observationProcess pause ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'