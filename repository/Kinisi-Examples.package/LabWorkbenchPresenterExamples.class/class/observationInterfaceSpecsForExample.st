examples
observationInterfaceSpecsForExample

	| nullSpec |
	nullSpec := PluggableInterfaceSpec
		onStartDo: [ ]
		with: [:observation |  ]
		andWhenFinishedDo: [  ].
	^ Array
		with: (InterfaceDefinition named: 'ExampleSpec1' with: nullSpec)
		with: (InterfaceDefinition named: 'ExampleSpec2' with: nullSpec)
		with: (InterfaceDefinition named: 'ExampleSpec3' with: nullSpec)