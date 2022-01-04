tests
testEarthAndSun

	| example scenario particleNames |
	example := ParticlesWorkbenchExampleSettingSource new earthAndSun.
	
	example applyOn: workbench.
	
	scenario := workbench modelWorkbench scenario.
	self assert: scenario particles size equals: 2.
	particleNames := scenario particles collect: [ :particle | particle particleName ].
	self
		assertCollection: particleNames
		hasSameElements: #( 'Earth' 'Sun' ).
	self assertAnimationInterfaceIsIn: workbench