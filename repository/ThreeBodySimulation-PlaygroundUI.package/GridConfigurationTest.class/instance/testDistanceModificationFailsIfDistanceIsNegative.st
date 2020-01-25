tests
testDistanceModificationFailsIfDistanceIsNegative

	| configuration |
	configuration := GridConfiguration new.

	self
		should: [ configuration distance: (meter with: -10) ]
		raise: UserInterfaceError