tests
testClearSoleInstance

	| aProvider |
	aProvider := UnitProvider soleInstance.
	
	UnitProvider clearSoleInstance.
	
	self deny: aProvider == UnitProvider soleInstance