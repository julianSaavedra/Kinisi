tests
testObservationCannotBePlayedAfterTermination

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	observationProcess terminate.
	
	self
		should: [ observationProcess play ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Observation has been terminated'