initialization
initializeWidgets

	settings := self
		instantiate: UniverseObservationSettingsPresenter
		on: universeObservation.
	view := self instantiate: RoassalModel.
	view
		script: [ :rtView :canvas |
			(UniverseRenderer basedOn: universeObservation)
				drawIn: rtView
				basedOn: universeObservation.
			"canvas camera scale: 1; translateTo: 0@0" ].

	self focusOrder
		add: settings;
		add: view