private
visitAsTotalDurationEndingMode: mode

	currentHelper := helperMap at: TotalDurationEndingModeHelper modeName.
	selectedMode := self instantiate: TotalDurationEndingModeSpresenter on: mode.
	selectedMode changeModelWith: [:newDuration | currentHelper updateWorkbench: workbench with: newDuration ].
	selectedMode units: specification deltaStepUnits