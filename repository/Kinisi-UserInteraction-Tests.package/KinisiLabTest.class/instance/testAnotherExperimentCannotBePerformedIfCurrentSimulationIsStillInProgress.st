tests - to be refactored
testAnotherExperimentCannotBePerformedIfCurrentSimulationIsStillInProgress

	| lab workbench experimentDefinition semaphore simulationIsRunning experimentChange |
	experimentChange := [:step :currentState | simulationIsRunning := true. semaphore wait].
	experimentDefinition := self experimentDefinitionUsing: experimentChange.
	workbench := self workbenchWith: experimentDefinition.
	lab := KinisiLab using: workbench.

	semaphore := Semaphore new.
	simulationIsRunning := false.
	lab performExperiment.

	[ [ simulationIsRunning ] whileFalse ]
		valueWithin: (Duration seconds: 2)
		onTimeout: [ self fail ].

	self
		should: [ lab performExperiment ]
		raise: Error
		whoseDescriptionIncludes: 'Lab cannot start new experiment until the current one is finished'