tests
testExperimentObservationInterfaceDoesNotObserveAnythingIfObservationIsDisabled

	| lab workbench interface |
	interface := self interface.
	workbench := self workbenchWithDisableObservationUsing: interface.
	lab := KinisiLab using: workbench.

	self performExperimentAndWaitUntilNewResultIsAvailable: lab.

	self assertEmpty: interface observations