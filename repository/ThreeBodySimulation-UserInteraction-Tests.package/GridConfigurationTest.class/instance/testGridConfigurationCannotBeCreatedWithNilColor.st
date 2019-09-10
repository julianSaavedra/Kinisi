tests
testGridConfigurationCannotBeCreatedWithNilColor

	self
		should: [ GridConfiguration withColor: nil size: 50 andDistance: (meter with: 1) ]
		raise: UserInterfaceError