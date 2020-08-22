instance creation
basedOn: definition
 
	^definition observationInterfaces
		ifNotEmpty: [self new initializeBasedOn: definition]
		ifEmpty: [ DisabledObservationController new ]