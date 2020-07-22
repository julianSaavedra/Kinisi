test - to be moved to ExperimentTest
testExperimentObservationInterfaceDoesNotObserveAnythingIfObservationIsDisabled

	| lab workbench interface |
	interface := self interface.
	workbench := self workbenchWithDisableObservationUsing: interface.
	lab := KinisiLab using: workbench.

	lab runExperiment.

	self assertEmpty: interface observations