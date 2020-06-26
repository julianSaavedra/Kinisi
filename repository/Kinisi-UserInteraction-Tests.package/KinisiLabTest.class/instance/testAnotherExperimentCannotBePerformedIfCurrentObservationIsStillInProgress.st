tests
testAnotherExperimentCannotBePerformedIfCurrentObservationIsStillInProgress

	| lab workbench experimentDefinition interface observationDefinition observationHasFinished observationIsAboutToFinish semaphore |
	interface := PluggableObservationInterface
		processWith: [:observation | ]
		andWhenFinishedDo: [ observationIsAboutToFinish := true. semaphore wait. observationHasFinished := true ].
	observationDefinition := ObservationDefinition fixedWith: interface.
	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [ :step :currentState | currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: observationDefinition.
	workbench := LabWorkbench fixedWith: experimentDefinition.
	lab := KinisiLab using: workbench.

	observationIsAboutToFinish := false.
	observationHasFinished := false.
	semaphore := Semaphore new.
	
	lab performExperiment.

	[ [observationIsAboutToFinish] whileFalse ]
		valueWithin: (Duration seconds: 2)
		onTimeout: [ self fail ].
	observationHasFinished
		ifFalse: [
			self
				should: [ lab performExperiment ]
				raise: Error
				whoseDescriptionIncludes: 'Lab cannot start new experiment until the current one is finished']
		ifTrue: [ self fail ]