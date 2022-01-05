tests
testInterfaceDefintionCannotBeCreatedWithAnEmptyName

	| spec |
	spec := PluggableInterfaceSpec
		onStartDo: [ ]
		with: [:observation |  ]
		andWhenFinishedDo: [  ]
		choosingDisplayWith: [ ].
		
	self
		should: [ InterfaceDefinition named: '' with: spec ]
		raise: Error
		whoseDescriptionIncludes: 'Interface definition name cannot be empty'