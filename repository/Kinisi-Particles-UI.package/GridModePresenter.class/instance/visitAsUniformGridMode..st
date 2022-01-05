private
visitAsUniformGridMode: uniformGridMode

	currentHelper := helpersMap at: UniformGridModeHelper modeName.
	mode := ColorSettingPresenter on: uniformGridMode color.
	mode whenModelChangesDo: [:newColor | currentHelper updateWorkbench: workbench with: newColor. postModelChangeAction value ]