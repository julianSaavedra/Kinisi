tests
testMeasureModificationFailsIfMeasureIsNegative

	| configuration |
	configuration := GridConfiguration new.

	self
		should: [ configuration scale: -10 / meter ]
		raise: UserInterfaceError