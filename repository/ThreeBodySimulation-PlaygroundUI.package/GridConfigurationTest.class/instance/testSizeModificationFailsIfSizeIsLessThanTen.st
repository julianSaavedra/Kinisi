tests
testSizeModificationFailsIfSizeIsLessThanTen

	| configuration |
	configuration := GridConfiguration new.
	
	self
		should: [ configuration size: 9 ]
		raise: 	UserInterfaceError