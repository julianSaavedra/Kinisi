initialization
initializePresenters

	| gridVisibilityLabel |
	background := ColorSettingPresenter on: universeObservation scenario background.
	"background label: 'Background'."
	background changeModelWith: [:newColor | universeObservation background: newColor ].
	zoom := UniverseScenarioZoomPresenter on: universeObservation.
	scale := self instantiate: ScalarMeasurePresenter on: self scalePresenterDescription.
	gridColor := ColorSettingPresenter on: universeObservation scenario gridColor.
	"gridColor label: 'Grid Color'."
	gridColor changeModelWith: [:newColor | universeObservation gridColor: newColor ].
	gridVisibility := self newButton.
	gridVisibilityLabel := universeObservation scenario isGridVisible ifTrue: [ 'Visible Grid' ] ifFalse: [ 'Invisible Grid' ].
	gridVisibility label: gridVisibilityLabel.
	gridVisibility action: [
		universeObservation isGridVisible
			ifTrue: [
				universeObservation turnGridOff.
				gridVisibility label: 'Invisible Grid']
			ifFalse: [
				universeObservation turnGridOn.
				gridVisibility label: 'Visible Grid' ]].

	self focusOrder add: background; add: zoom; add: gridColor; add: gridVisibility