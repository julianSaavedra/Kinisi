tests
testProjectile

	| workbench example scenario interfaceDefinitions particle |
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	example := ParticlesWorkbenchExampleSettingSource new projectile.
		
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self assert: scenario particles size equals: 1.
	particle := scenario particles first.
	
	self assert: particle velocity x amount > 0.
	self assert: particle velocity y amount > 0.
	self denyEmpty: particle changeSpecifications. 
	interfaceDefinitions := workbench observationWorkbench definition interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'.
	