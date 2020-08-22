tests
testObservationCannotBePausedAfterTermination

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	observationProcess terminate.
	
	self
		should: [ observationProcess pause ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'