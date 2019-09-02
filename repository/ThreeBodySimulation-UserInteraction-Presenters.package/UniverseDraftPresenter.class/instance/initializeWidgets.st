initialization
initializeWidgets

	view := self instantiate: RoassalModel.
	view script: [ :rtView :canvas |
		| gridConfiguration |
		gridConfiguration := self gridConfiguration.
		canvas color: Color black.
		(UniverseRenderer basedOn: universeDraft and: gridConfiguration)
			drawIn: rtView basedOn: universeDraft.
		GridRenderer new drawIn: rtView basedOn: gridConfiguration
			"canvas camera scale: 1; translateTo: 0@0" ].

	self focusOrder add: view