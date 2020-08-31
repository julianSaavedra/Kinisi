assert
assert: propertyReader changesTo: expectedProperty when: propertyConfigurator

	self
		deny: (propertyReader value: workbench scenario)
		equals: expectedProperty.

	propertyConfigurator value: expectedProperty.

	self
		assert: (propertyReader value: workbench scenario)
		equals: expectedProperty