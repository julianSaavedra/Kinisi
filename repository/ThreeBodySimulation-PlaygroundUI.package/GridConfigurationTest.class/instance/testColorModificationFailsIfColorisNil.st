tests
testColorModificationFailsIfColorisNil

	| configuration |
	configuration := GridConfiguration new.

	self
		should: [ configuration color: nil ]
		raise: UserInterfaceError