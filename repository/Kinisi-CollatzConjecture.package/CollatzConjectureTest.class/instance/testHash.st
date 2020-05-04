tests
testHash

	|  stateAtFive anotherStateAtFive stateAtTen |
	stateAtFive := CollatzConjectureState with: 5.
	
	anotherStateAtFive := CollatzConjectureState with: 5.
	self assert: stateAtFive hash equals: anotherStateAtFive hash.
	
	stateAtTen := CollatzConjectureState with: 10.
	self deny: stateAtFive hash equals: stateAtTen hash