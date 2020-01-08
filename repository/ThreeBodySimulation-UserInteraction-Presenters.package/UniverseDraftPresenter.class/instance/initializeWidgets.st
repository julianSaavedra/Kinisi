initialization
initializeWidgets

	controlPanel := self instantiate: UniverseDraftTabPanelPresenter on: universeDraft.
	view := self instantiate: RoassalModel.
	view script: [ :rtView :canvas |
		| gridConfiguration |
		gridConfiguration := self gridConfiguration.
		canvas color: Color black.
		(UniverseRenderer basedOn: universeDraft and: gridConfiguration)
			drawIn: rtView basedOn: universeDraft.
		GridRenderer new drawIn: rtView basedOn: gridConfiguration.
		rtView @ RTZoomableView.
		rtView @ RTDraggableView
			"canvas camera scale: 1; translateTo: 0@0" ].

	self focusOrder add: controlPanel; add: view