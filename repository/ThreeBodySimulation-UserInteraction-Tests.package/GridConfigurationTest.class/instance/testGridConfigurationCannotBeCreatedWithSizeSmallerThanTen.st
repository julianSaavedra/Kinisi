tests
testGridConfigurationCannotBeCreatedWithSizeSmallerThanTen

	self
		should: [ GridConfiguration
				withColor: Color red
				size: 9
				andDistance: (meter with: 1) ]
		raise: UserInterfaceError