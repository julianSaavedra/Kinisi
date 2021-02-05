initialization
initializeBackground

	background := LabeledColorSettingPresenter on: workbench scenario background.
	background label: 'Background'.
	background changeModelWith: [:newColor | workbench background: newColor ]