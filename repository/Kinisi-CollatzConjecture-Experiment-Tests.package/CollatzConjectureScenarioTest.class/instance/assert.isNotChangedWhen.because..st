assert
assert: propertyAccessor isNotChangedWhen: propertyConfigurator because: expectedErrorMessage

	| preUpdateProperty |
	preUpdateProperty := propertyAccessor value: workbench scenario.

	self
		should: propertyConfigurator
		raise: Error
		whoseDescriptionIncludes: expectedErrorMessage.

	self
		assert: (propertyAccessor value: workbench scenario)
		equals: preUpdateProperty