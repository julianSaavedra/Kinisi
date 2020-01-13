initialization
initializeWidgets

	background := ColorSettingPresenter on: universeObservation background.
	background label: 'Background'.
	background changeModelWith: [:newColor | universeObservation background: newColor ]