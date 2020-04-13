initialization
toolBar

	| toolBar |
	toolBar := self newToolBar.
	toolBar addButtonLabel: 'Play' iconNamed: #glamorousGo help: 'Start simulation' action: [workbench play].
	toolBar addButtonLabel: 'Last Result' iconNamed: #glamorousTable help: 'Inspect last result' action: [workbench lastResult inspect].
	^toolBar