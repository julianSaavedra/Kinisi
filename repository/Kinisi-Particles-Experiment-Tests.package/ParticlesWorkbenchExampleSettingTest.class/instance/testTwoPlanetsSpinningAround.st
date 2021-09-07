tests
testTwoPlanetsSpinningAround

	| workbench example scenario interfaceDefinitions particleA particleB |
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	example := ParticlesWorkbenchExampleSettingSource new twoPlanetsSpinningAround.
		
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario particles size equals: 2.
	particleA := scenario particles first.
	particleB := scenario particles second.
	self assert: particleA position equals: particleB position opposite.
	self assert: particleA velocity equals: particleB velocity opposite.
	
	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'.
	