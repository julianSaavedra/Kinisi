test objects - interface specs
interfaceDefinitionNamed: name processingWith: observationProcessingBlock

	| recordKeeper interfaceSpec |
	recordKeeper := ObservationsRecorder new.
	self register: recordKeeper with: name.
	interfaceSpec := PluggableInterfaceSpec
		onStartDo: [ recordKeeper start ]
		with: [:observation | 
			| processingResult |
			processingResult := observationProcessingBlock value: observation.
			recordKeeper record: processingResult.
			processingResult ]
		andWhenFinishedDo: [ recordKeeper terminate ].
	^InterfaceDefinition named: name with: interfaceSpec