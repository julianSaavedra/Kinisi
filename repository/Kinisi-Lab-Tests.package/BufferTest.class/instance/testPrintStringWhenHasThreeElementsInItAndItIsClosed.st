test - print string
testPrintStringWhenHasThreeElementsInItAndItIsClosed

	| buffer |
	buffer := Buffer new.
	buffer store: 'a'; store: 'b'; store: 'c'; close.
	self assert: buffer printString equals: 'Buffer Closed [Data packages: 3]'