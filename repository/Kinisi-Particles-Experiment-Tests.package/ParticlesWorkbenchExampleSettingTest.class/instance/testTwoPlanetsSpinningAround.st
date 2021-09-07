tests
testTwoPlanetsSpinningAround

	| example scenario particleA particleB |
	example := ParticlesWorkbenchExampleSettingSource new
		           twoPlanetsSpinningAround.
		
	example applyOn: workbench.
	
	scenario := workbench modelWorkbench scenario.
	self assert: scenario particles size equals: 2.
	particleA := scenario particles first.
	particleB := scenario particles second.
	self assert: particleA position equals: particleB position opposite.
	self assert: particleA velocity equals: particleB velocity opposite.
	self assertAnimationInterfaceIsIn: workbench