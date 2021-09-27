initialization
initializeBasedOn: anExperimentDefinition in: anExperimentRunner

	experimentDefinition := anExperimentDefinition.
	experimentRunner := anExperimentRunner.
	status := NotStartedExperimentStatus new.
	self initializeProcess