tests
testInterfaceDefintionCannotBeCreatedWithAnEmptyName

	| spec |
	spec := PluggableInterfaceSpec with: [:observation | ] andWhenFinishedDo: [].
	self
		should: [ InterfaceDefinition named: '' with: spec ]
		raise: Error
		whoseDescriptionIncludes: 'Interface definition name cannot be empty'