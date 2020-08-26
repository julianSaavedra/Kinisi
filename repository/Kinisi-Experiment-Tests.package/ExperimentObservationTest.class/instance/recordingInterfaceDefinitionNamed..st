test objects
recordingInterfaceDefinitionNamed: name

	| interfaceSpec recordKeeper|
	recordKeeper := ObservationsRecordKeeper new.
	self register: recordKeeper with: name.
	interfaceSpec := PluggableInterfaceSpec
		onStartDo: [ recordKeeper interfaceStarting ]
		with: [:observation | recordKeeper record: observation ]
		andWhenFinishedDo:[ recordKeeper interfaceFinishing ].
	^InterfaceDefinition named: name with: interfaceSpec