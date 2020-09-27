initialization
toolBar

	| toolBar |
	toolBar := self newToolBar.
	toolBar
		addButtonLabel: 'Play'
		iconNamed: #glamorousGo
		help: 'Experiment is performed based on current settings'
		action: [lab runExperiment].
	toolBar
		addButtonLabel: 'Result'
		iconNamed: #glamorousTable
		help: 'Inspect results'
		action: [lab experimentsResults inspect].
	^toolBar