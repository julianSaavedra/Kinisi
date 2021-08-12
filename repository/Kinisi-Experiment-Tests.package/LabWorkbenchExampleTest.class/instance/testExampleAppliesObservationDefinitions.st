tests
testExampleAppliesObservationDefinitions

	| workbench example interfaceDefinitions exampleInterfaceDefinitions examplePeriod |
	workbench := self workbench.
	examplePeriod := self twoSeconds.
	exampleInterfaceDefinitions := self twoInterfaceDefinitions.
	example := LabWorkbenchExample
		           apply: [:modelWorkbench |  ]
		           withPeriod: examplePeriod
		           withAll: exampleInterfaceDefinitions.
	example applyOn: workbench.
	interfaceDefinitions := workbench observationWorkbench definition.
	self assert: interfaceDefinitions period equals: examplePeriod.
	self
		assertCollection: interfaceDefinitions interfaceDefinitions
		hasSameElements: exampleInterfaceDefinitions