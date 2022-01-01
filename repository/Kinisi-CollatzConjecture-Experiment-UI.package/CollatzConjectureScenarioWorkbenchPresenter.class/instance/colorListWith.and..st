initialization
colorListWith: colorAccess and: modifierCreation

	| colorSetting |
	colorSetting := ColorSettingPresenter on: colorAccess value.
	colorSetting whenModelChangesDo: [:newColor |
		modifierCreation value: newColor.
		self doPostUpdateAction ].
	^colorSetting