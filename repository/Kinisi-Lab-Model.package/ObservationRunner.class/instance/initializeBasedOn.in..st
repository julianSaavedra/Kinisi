initialization
initializeBasedOn: anExperimentDefinition in: anExperimentRunner

	experimentDefinition := anExperimentDefinition.
	experimentRunner := anExperimentRunner.
	buffer := Buffer new.
	process := KinisiObservation
		on: (ObservationSource from: buffer)
		with: experimentDefinition observationInterfaces
		waiting: experimentDefinition period