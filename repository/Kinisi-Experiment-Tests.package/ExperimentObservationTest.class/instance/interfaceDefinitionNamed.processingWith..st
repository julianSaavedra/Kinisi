test objects - interface specs
interfaceDefinitionNamed: name processingWith: observationProcessingBlock

	| recordKeeper interfaceSpec |
	recordKeeper := ObservationsRecorder new.
	self register: recordKeeper with: name.
	interfaceSpec := PluggableInterfaceSpec
		onStartDo: [ recordKeeper start ]
		with: [:observation :display |
			| processingResult |
			processingResult := observationProcessingBlock value: observation.
			recordKeeper record: processingResult.
			display show: processingResult.
			processingResult ]
		andWhenFinishedDo: [ recordKeeper terminate ]
		choosingDisplayWith: [ ObservationsRecorderDisplay new ].
	^ InterfaceDefinition named: name with: interfaceSpec