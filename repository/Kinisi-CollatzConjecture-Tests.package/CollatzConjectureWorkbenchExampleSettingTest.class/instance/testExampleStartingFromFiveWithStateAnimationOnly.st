tests
testExampleStartingFromFiveWithStateAnimationOnly
	
	| example scenario interfaceDefinitions |
	example := exampleSource settingFromFiveWithStateAnimationOnly.
		
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario state equals: (CollatzConjectureState with: 5).
	self assert: scenario numberColor equals: Color blue.
	self assert: scenario background equals: Color lightGray.
	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'