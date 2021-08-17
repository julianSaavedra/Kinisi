tests
testExampleStartingFromTwentysevenWithChartAndDescriptiveStatistics
	
	| workbench example scenario interfaceDefinitions interfaceDefinitionsNames |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	example := CollatzConjectureWorkbenchExampleSettingSource new settingTwentySevenWithChartAndDescriptiveStatistics.
	
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario state equals: (CollatzConjectureState with: 27).
	self assert: scenario numberColor equals: Color purple.
	self assert: scenario background equals: Color pink.
	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	interfaceDefinitionsNames := interfaceDefinitions collect: [:definition | definition name ].
	self assert: interfaceDefinitionsNames size equals: 2.
	self assertCollection: interfaceDefinitionsNames includesAll: {'CollatzSequenceMonitor'. 'CollatzStatisticsMonitor'}