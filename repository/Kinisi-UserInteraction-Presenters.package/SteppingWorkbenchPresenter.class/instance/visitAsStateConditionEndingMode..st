instance creation
visitAsStateConditionEndingMode: mode

	currentHelper := helperMap at: ConditionEndingModeHelper modeName.
	selectedMode := self instantiate: ConditionEndingModePresenter on: mode.
	selectedMode changeModelWith: [:newDuration | currentHelper updateWorkbench: workbench with: newDuration ].
	self update