test objects
twoInterfaceDefinitions

	^#('ExampleInterfaceA' 'ExampleInterfaceB') collect: [:name |
		self interfaceDefinitionNamed: name ]