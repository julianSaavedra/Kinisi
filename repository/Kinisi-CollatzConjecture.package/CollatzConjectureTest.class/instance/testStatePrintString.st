tests
testStatePrintString

	| state |
	state := CollatzConjectureState with: 5.
	
	self assert: state printString equals: 'Collatz Conjecture: 5'
