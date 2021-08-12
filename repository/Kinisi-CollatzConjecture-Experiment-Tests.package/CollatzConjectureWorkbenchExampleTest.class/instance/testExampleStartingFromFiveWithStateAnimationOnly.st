tests
testExampleStartingFromFiveWithStateAnimationOnly
	
	| workbench example scenario interfaceDefinitions |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	example := CollatzConjectureWorkbenchExample fromFiveWithStateAnimationOnly.
		
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario state equals: (CollatzConjectureState with: 5).
	self assert: scenario numberSize equals: 40.
	self assert: scenario numberColor equals: Color blue.
	self assert: scenario background equals: Color lightGray.
	self assert: scenario font equals: #'Source Code Pro'.
	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'