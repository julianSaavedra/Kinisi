initialization
initializeBasedOn: aDefinition in: aLab
 
	definition := aDefinition.
	observation := ObservationController basedOn: definition.
	lab := aLab.
	self prepareExperimentProcess.
	status := NotStartedExperimentStatus new.
	observationHasStated := false