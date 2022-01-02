private
visitAsTotalDurationEndingMode: mode

	currentHelper := helperMap at: TotalDurationEndingModeHelper modeName.
	selectedMode := self instantiate: TotalDurationEndingModeSpresenter on: mode.
	selectedMode units: specification deltaStepUnits.
	selectedMode changeModelWith: [:newDuration | currentHelper updateWorkbench: workbench with: newDuration ].
	