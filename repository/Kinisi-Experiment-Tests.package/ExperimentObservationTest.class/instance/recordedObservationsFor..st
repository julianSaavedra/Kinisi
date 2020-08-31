support
recordedObservationsFor: interfaceDefinition
 
	^recordKeepers
		at: interfaceDefinition name
		ifPresent: [:recorder | recorder observations ]
		ifAbsent: [ OrderedCollection new ]