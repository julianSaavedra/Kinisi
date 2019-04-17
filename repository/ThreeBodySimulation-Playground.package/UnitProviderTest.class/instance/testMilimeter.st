tests
testMilimeter

	| milimeter |
	milimeter := UnitProvider soleInstance milimeter.
	
	self assert: milimeter name equals: 'Milimeter'.
	self assert: milimeter sign equals: 'N'.
	self assert: UnitProvider soleInstance meter == milimeter baseUnit