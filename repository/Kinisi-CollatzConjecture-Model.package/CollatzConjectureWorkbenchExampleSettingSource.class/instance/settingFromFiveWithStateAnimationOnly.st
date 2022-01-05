settings
settingFromFiveWithStateAnimationOnly

	| period interfaceDefinition modelSetting |
	period := Duration milliSeconds: 500.
	interfaceDefinition := InterfaceDefinition
		                       named: 'Animation'
		                       with:
		                       CollatzConjectureAnimationInterfaceSpec new.
	modelSetting := CollatzConjectureWorkbenchExampleSetting fromBlueFiveWithGreyBackground.
	^self
		  workbenchSettingWith: modelSetting
		  over: period
		  withAll: { interfaceDefinition }