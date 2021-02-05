tests
testEquals

	|  stateAtFive anotherStateAtFive stateAtTen |
	stateAtFive := CollatzConjectureState with: 5.
	
	anotherStateAtFive := CollatzConjectureState with: 5.
	self assert: stateAtFive equals: anotherStateAtFive.
	
	stateAtTen := CollatzConjectureState with: 10.
	self deny: stateAtFive equals: stateAtTen
	