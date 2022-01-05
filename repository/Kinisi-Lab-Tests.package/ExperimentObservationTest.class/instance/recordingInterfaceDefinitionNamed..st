test objects - interface specs
recordingInterfaceDefinitionNamed: name

	^self
		interfaceDefinitionNamed: name
		processingWith: [ :observation | observation ]
		andDisplayingUsing: [:displayProvider | displayProvider displayForCanvas ]