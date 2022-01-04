private
visitAsQuadrantGridMode: quadrantGridMode

	currentHelper := helpersMap at: QuadrantGridModeHelper modeName.
	mode := ColorSettingPresenter on: quadrantGridMode color.
	mode whenModelChangesDo: [:newColor | currentHelper updateWorkbench: workbench with: newColor. postModelChangeAction value ]