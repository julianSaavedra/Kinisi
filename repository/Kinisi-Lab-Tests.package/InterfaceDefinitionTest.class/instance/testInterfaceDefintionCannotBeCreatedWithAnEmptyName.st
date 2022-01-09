tests
testInterfaceDefintionCannotBeCreatedWithAnEmptyName

	| spec |
	spec := self newInterfaceSpec.

	self
		should: [ InterfaceDefinition named: '' with: spec ]
		raise: Error
		whoseDescriptionIncludes:
		'Interface definition name cannot be empty'