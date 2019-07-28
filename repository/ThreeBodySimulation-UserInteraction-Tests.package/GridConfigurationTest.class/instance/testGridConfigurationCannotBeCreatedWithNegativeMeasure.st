tests
testGridConfigurationCannotBeCreatedWithNegativeMeasure

	self
		should: [ GridConfiguration withColor: red size: 10 andScale: -10 / meter ]
		raise: UserInterfaceError