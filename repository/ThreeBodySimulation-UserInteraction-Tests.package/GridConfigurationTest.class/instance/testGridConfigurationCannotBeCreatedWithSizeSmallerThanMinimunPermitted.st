tests
testGridConfigurationCannotBeCreatedWithSizeSmallerThanMinimunPermitted

	| minimunSize |

	minimunSize := GridConfiguration new minimunSize.

	self
		should: [ GridConfiguration
				withColor: Color red
				size: minimunSize - 1
				andScale: 1 / meter ]
		raise: UserInterfaceError