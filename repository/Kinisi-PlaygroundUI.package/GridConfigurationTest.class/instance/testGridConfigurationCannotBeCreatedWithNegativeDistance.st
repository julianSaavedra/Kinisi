tests
testGridConfigurationCannotBeCreatedWithNegativeDistance

	self
		should: [ GridConfiguration withColor: red size: 10 andDistance: (meter with: -10)  ]
		raise: UserInterfaceError