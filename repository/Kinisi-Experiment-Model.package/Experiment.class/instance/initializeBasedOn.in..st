initialization
initializeBasedOn: aDefinition in: aLab
 
	definition := aDefinition.
	lab := aLab.
	runner := ExperimentRunner for: self.
	"observation := ObservationController basedOn: definition."
	"self prepareExperimentProcess.
	status := NotStartedExperimentStatus new.
	observationHasStated := false"