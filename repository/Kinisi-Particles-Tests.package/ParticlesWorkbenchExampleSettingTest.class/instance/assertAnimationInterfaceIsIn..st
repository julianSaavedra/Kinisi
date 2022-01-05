asserting
assertAnimationInterfaceIsIn: workbench

	| interfaceDefinitions |
	interfaceDefinitions := workbench observationWorkbench definition
		                        interfaceDefinitions.
	self assert: interfaceDefinitions size equals: 1.
	self assert: interfaceDefinitions first name equals: 'Animation'