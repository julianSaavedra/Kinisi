initialization
initializePresenters

	label := self newLabel.
	colorSetting := self instantiate: ColorSettingPresenter on: initialColor.
	self initializeFocusOrder