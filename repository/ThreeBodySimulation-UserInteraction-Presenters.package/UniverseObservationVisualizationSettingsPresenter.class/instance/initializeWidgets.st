initialization
initializeWidgets

	background := ColorSettingPresenter on: universeObservation background.
	background label: 'Background'.
	background changeModelWith: [:newColor | universeObservation background: newColor ].
	zoom := UniverseObservationZoomPresenter on: universeObservation.
	scale := self instantiate: ScalarMeasurePresenter on: self scalePresenterDescription.

	self focusOrder add: background; add: zoom