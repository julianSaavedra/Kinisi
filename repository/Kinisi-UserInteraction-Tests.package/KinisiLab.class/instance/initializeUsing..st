instance creation
initializeUsing: aWorkbench

	workbench := aWorkbench.
	controlPanel := KinisiLabControlPanel new.
	experiments := OrderedCollection new.
	isRunning := false.
	observationIsRunning := false