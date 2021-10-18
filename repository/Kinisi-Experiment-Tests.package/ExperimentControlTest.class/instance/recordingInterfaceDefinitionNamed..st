test objects - interface specs - duplicated
recordingInterfaceDefinitionNamed: name

	^self
		interfaceDefinitionNamed: name
		processingWith: [ :observation | observation ]
		andDisplayingUsing: [:displayProvider | displayProvider displayForCanvas ]