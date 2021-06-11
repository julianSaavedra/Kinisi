test objects - interface specs
numberToLabelRecordingInterfaceNamed: name

	^self
		interfaceDefinitionNamed: name
		processingWith: [:anObservation | 'Number_<1s>' expandMacrosWith: anObservation value asString ]
		andDisplayingUsing: [:displayProvider | displayProvider displayForTranscript ]