tests
testClearSoleInstance

	| aProvider anotherProvider |
	aProvider := UnitProvider soleInstance.
	UnitProvider clearSoleInstance.
	anotherProvider := UnitProvider soleInstance.
	
	self deny: aProvider == anotherProvider