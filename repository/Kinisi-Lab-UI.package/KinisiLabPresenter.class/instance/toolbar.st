widgets
toolbar

	| toolbar |
	toolbar := self newToolbar.
	toolbar
		beBoth;
		addItem: (SpToolbarButtonPresenter new
				 label: 'Play';
				 icon: (self iconNamed: #glamorousGo);
				 help: 'Experiment is performed based on current settings';
				 action: [ self runExperimentWithDisplays ];
				 yourself);
		addItem: (SpToolbarButtonPresenter new
				 label: 'Results';
				 icon: (self iconNamed: #glamorousTable);
				 help: 'Inspect results';
				 action: [ lab experimentsResults inspect ];
				 yourself);
		addItem: (SpToolbarButtonPresenter new
				 label: 'Last result';
				 icon: (self iconNamed: #history);
				 help: 'Inspect last result';
				 action: [ self inspectLastResult ];
				 yourself).
	^ toolbar