tests
testAnotherExperimentCannotBePerformedIfCurrentObservationIsStillInProgress

	| lab workbench interface |
	interface := self neverEndingInterface.
	workbench := self workbenchWithObservationDefinitionUsing: interface.
	lab := KinisiLab using: workbench.

	self deny: interface isObserving.
	lab performExperiment.
	self assert: interface isObserving.
	self
		should: [ lab performExperiment ]
		raise: Error
		whoseDescriptionIncludes: 'Lab cannot start new experiment until the current one is finished'