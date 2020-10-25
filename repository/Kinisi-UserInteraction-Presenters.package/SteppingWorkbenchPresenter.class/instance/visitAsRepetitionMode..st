private
visitAsRepetitionMode: mode
 
	currentHelper := helperMap at: RepetitionEndingModeHelper modeName asSymbol.
	selectedMode := self instantiate: RepetitionEndingModeSpresenter on: mode.
	selectedMode changeModelWith: [:newNumberOfRepetitions | currentHelper updateWorkbench: workbench with: newNumberOfRepetitions ].
	self update