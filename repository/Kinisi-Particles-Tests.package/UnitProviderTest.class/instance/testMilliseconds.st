tests
testMilliseconds

	| millisecond second |
	millisecond := unitProvider millisecond.

	self assert: millisecond name equals: 'Millisecond'.
	self assert: millisecond sign equals: 'ms'.
	second := unitProvider second.
	self assert: millisecond baseUnit equals: second.
	self assert: (millisecond with: 1000) equals: (second with: 1)