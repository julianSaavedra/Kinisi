test objects
recordingInterfaceDefinitionNamed: name

	| interfaceSpec |
	interfaceSpec := PluggableInterfaceSpec
		onStartDo: [ self startRecordKeeperFor: name ]
		with: [:observation | self record: observation for: name ]
		andWhenFinishedDo:[ self finishedRecordKeeperFor: name ].
	^InterfaceDefinition named: name with: interfaceSpec