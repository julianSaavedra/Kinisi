support
recordedObservationsFor: interfaceDefinition
 
	^recorders
		at: interfaceDefinition name
		ifPresent: [:recorder | recorder observations ]
		ifAbsent: [ OrderedCollection new ]