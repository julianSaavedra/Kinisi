tests
testStateIsCreatedWithFive

	| five state |
	five := 5.
	
	state := CollatzConjectureState with: five.
	
	self assert: state number equals: five