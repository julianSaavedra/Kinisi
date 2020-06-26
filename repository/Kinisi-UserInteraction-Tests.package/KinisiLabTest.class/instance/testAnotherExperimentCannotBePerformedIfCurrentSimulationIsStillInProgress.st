tests
testAnotherExperimentCannotBePerformedIfCurrentSimulationIsStillInProgress

	| lab workbench experimentDefinition observationDefinition semaphore |
	observationDefinition := ObservationDefinition fixedWith: self nullInterface.
	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [:step :currentState | semaphore wait. currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: observationDefinition.
	workbench := LabWorkbench fixedWith: experimentDefinition.
	lab := KinisiLab using: workbench.

	semaphore := Semaphore new.
	lab performExperiment.

	self
		should: [ lab performExperiment ]
		raise: Error
		whoseDescriptionIncludes: 'Lab cannot start new experiment until the current one is finished'