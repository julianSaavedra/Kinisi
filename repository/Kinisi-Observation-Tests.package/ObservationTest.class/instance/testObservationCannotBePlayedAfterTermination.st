tests
testObservationCannotBePlayedAfterTermination

	observationProcess := KinisiObservation on: source with: interface waiting: delay.
	observationProcess terminate.
	
	self
		should: [ observationProcess play ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'