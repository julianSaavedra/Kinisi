tests
testColorIsModifiedToRed

	| configuration |
	configuration := GridConfiguration new.
	self deny: configuration color equals: red.
	
	configuration color: red.
	
	self assert: configuration color equals: red