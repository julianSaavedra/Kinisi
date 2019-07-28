tests
testGridConfigurationCannotBeCreatedWithNilColor

	self
		should: [ GridConfiguration withColor: nil size: 50 andScale: 1 / meter ]
		raise: UserInterfaceError