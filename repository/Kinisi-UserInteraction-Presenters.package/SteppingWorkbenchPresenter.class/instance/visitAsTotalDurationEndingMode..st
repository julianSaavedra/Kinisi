private
visitAsTotalDurationEndingMode: mode
 
	currentHelper := helperMap at: TotalDurationEndingModeHelper modeName.
	selectedMode := self instantiate: TotalDurationEndingModeSpresenter on: mode.
	selectedMode units: self deltaUnits. 
	selectedMode changeModelWith: [:newDuration | currentHelper updateWorkbench: workbench with: newDuration ].
	self update