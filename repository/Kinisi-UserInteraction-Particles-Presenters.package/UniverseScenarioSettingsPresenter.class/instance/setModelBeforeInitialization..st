initialization
setModelBeforeInitialization: universeWorkbench

	super setModelBeforeInitialization: universeWorkbench.
	workbench := universeWorkbench.
	settings := OrderedCollection new