test - print string
testPrintStringWhenBufferWasNotStartedYet

	| buffer |
	buffer := Buffer new.
	self assert: buffer printString equals: 'Buffer was not started yet'