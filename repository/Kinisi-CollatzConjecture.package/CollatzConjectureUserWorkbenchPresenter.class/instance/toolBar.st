initialization
toolBar

	| toolBar |
	toolBar := self newToolBar.
	toolBar addButtonLabel: 'Play' iconNamed: #glamorousGo help: 'Experiment is performed based on current settings' action: [workbench performExperiment].
	toolBar addButtonLabel: 'Result' iconNamed: #glamorousTable help: 'Inspect last result' action: [workbench lastResult inspect].
	^toolBar