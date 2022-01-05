test - print string
testPrintStringWhenHasThreeElementsInIt

	| buffer |
	buffer := Buffer new.
	buffer store: 'a'; store: 'b'; store: 'c'.
	self assert: buffer printString equals: 'Buffer Open [Data packages: 3]'