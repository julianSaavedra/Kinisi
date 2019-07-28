tests
testSizeIsModifiedTo100

	| configuration |
	configuration := GridConfiguration new.
	self deny: configuration size equals: 100.
	
	configuration size: 100.
	
	self assert: configuration size equals: 100