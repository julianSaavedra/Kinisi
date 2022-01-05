settings
settingTwentySevenWithChartAndDescriptiveStatistics

	| period interfaceDefinitions modelSetting |
	period := Duration milliSeconds: 500.
	interfaceDefinitions := { 
		                        (InterfaceDefinition
			                         named: 'CollatzSequenceMonitor'
			                         with:
			                         CollatzConjectureSequenceChartInterfaceSpec
				                         new).
		                        (InterfaceDefinition
			                         named: 'CollatzStatisticsMonitor'
			                         with:
			                         CollatzConjectureDescriptiveStatisticsInterfaceSpec
				                         new) }.
	modelSetting := CollatzConjectureWorkbenchExampleSetting
		                fromPurpleTwentySevenWithPinkBackground.
	^self
		  workbenchSettingWith: modelSetting
		  over: period
		  withAll: interfaceDefinitions