tests
testSecond

	| second |
	second := UnitProvider soleInstance second.
	
	self assert: second name equals: 'Second'.
	self assert: second sign equals: 's'