private - example item definitions
collatzExampleItemDefinitions

	| exampleSource |
	exampleSource := CollatzConjectureWorkbenchExampleSettingSource new.
	^{
		KinisiExampleItemDefinition
			with: exampleSource settingFromFiveWithStateAnimationOnly
			labeled: 'From 5 with state animation display'.
		KinisiExampleItemDefinition
			with: exampleSource settingTwentySevenWithChartAndDescriptiveStatistics
			labeled: 'From 27 with chart and statistics displays'
	}