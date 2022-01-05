instance creation
basedOn: experimentDefinition in: experimentRunner
 
	^experimentDefinition observationInterfaces
		ifNotEmpty: [self new initializeBasedOn: experimentDefinition in: experimentRunner ]
		ifEmpty: [ NoObservationRunner new ]