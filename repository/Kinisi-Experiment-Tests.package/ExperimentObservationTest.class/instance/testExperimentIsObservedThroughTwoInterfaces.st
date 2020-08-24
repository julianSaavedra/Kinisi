tests
testExperimentIsObservedThroughTwoInterfaces

	| interfaceADefinition interfaceBDefinition |
	interfaceADefinition := self recordingInterfaceDefinitionNamed: 'InterfaceA'.
	interfaceBDefinition := self recordingInterfaceDefinitionNamed: 'InterfaceB'.

	observationWorkbench
		period: (Duration milliSeconds: 100);
		add: interfaceADefinition;
		add: interfaceBDefinition.

	lab runExperiment.
	[self waitRecordingIsFinishedFor:interfaceADefinition.
	self waitRecordingIsFinishedFor:interfaceBDefinition.
		] valueWithin: 2 seconds onTimeout: [ self fail ].
	
	self denyEmpty: (self recordedObservationsFor: interfaceADefinition).
	self denyEmpty: (self recordedObservationsFor: interfaceBDefinition)