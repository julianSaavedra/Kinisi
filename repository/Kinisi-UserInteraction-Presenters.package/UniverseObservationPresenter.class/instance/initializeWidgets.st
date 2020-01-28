initialization
initializeWidgets

	settings := self instantiate: UniverseObservationSettingsPresenter on: universeObservation.
	view := self instantiate: RoassalModel.
	view script: [ :rtView :canvas |
		| gridConfiguration gridSize |
		gridSize := universeObservation zoom measureBetween: 10 and: 50.
		gridConfiguration := GridConfiguration
			withColor: (Color gray alpha: 0.7)
			size: gridSize
			andDistance: universeObservation scale.
		canvas color: universeObservation background.
		(UniverseRenderer basedOn: universeObservation and: gridConfiguration)
			drawIn: rtView basedOn: universeObservation.
		GridRenderer new drawIn: rtView basedOn: gridConfiguration.
		rtView @ RTZoomableView.
		rtView @ RTDraggableView
		"canvas camera scale: 1; translateTo: 0@0" ].

	self focusOrder add: settings; add: view