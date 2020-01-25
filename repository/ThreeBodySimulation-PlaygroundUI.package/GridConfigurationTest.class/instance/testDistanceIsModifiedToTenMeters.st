tests
testDistanceIsModifiedToTenMeters

	| configuration tenMeters |
	configuration := GridConfiguration new.
	tenMeters := meter with: 10.
	self deny: configuration distance equals: tenMeters.
	
	configuration distance: tenMeters.
	
	self assert: configuration distance equals: tenMeters