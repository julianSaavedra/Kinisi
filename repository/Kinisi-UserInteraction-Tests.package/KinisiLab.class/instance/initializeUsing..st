instance creation
initializeUsing: aWorkbench

	workbench := aWorkbench.
	experiments := OrderedCollection new.
	isRunning := false.
	observationIsRunning := false