initialization
initializeBasedOn: aDefinition in: aLab
 
	definition := aDefinition.
	observation := ObservationController basedOn: definition.
	lab := aLab.
	status := NotStartedExperimentStatus new.
	observationHasStated := false