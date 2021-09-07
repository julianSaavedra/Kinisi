tests
testEarthAndSun

	| workbench example scenario interfaceDefinitions particleNames |
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	example := ParticlesWorkbenchExampleSettingSource new earthAndSun.
		
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario particles size equals: 2.
	particleNames := scenario particles collect: [:particle | particle particleName ].
	self assertCollection: particleNames hasSameElements: #('Earth' 'Sun').

	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'.
	