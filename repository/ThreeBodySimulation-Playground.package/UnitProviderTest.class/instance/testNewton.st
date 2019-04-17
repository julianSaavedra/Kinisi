tests
testNewton

	| newton |
	newton := UnitProvider soleInstance newton.
	
	self assert: newton name equals: 'Newton'.
	self assert: newton sign equals: 'N'