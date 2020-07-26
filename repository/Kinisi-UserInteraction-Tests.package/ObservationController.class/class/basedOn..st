instance creation
basedOn: definition
 
	^definition
		ifEnabled: [self new initializeBasedOn: definition]
		ifNot: [ DisabledObservationController new ]