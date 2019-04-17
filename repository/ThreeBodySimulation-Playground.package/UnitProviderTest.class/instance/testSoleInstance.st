tests
testSoleInstance

	| aProvider anotherProvider |
	aProvider := UnitProvider soleInstance.
	anotherProvider := UnitProvider soleInstance.
	
	self assert: aProvider == anotherProvider