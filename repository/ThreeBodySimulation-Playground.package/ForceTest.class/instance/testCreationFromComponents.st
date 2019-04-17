tests
testCreationFromComponents

	| newton force |
	
	newton := UnitProvider soleInstance newton.
	force := Force x: 0 y: 9.82.
	
	self assert: force x equals: (newton with: 0).
	self assert: force y equals: (newton with: 9.82)