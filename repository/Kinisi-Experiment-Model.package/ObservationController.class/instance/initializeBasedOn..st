initialization
initializeBasedOn: definition

	buffer := Buffer new.
	process := KinisiObservation
		on: (ObservationSource from: buffer)
		with: definition observationInterfaces first
		waiting: definition period