tests
testExperimentObservationsAreProcessedByGivenTwoInterfaces

	| interfaceADefinition interfaceBDefinition |
	interfaceADefinition := self recordingInterfaceDefinitionNamed: 'InterfaceA'.
	interfaceBDefinition := self recordingInterfaceDefinitionNamed: 'InterfaceB'.

	observationWorkbench
		add: interfaceADefinition;
		add: interfaceBDefinition.

	lab runExperiment.
	self waitRecordingIsFinishedForInterfaceBasedOn:interfaceADefinition.
	self waitRecordingIsFinishedForInterfaceBasedOn:interfaceBDefinition.
		
	self denyEmpty: (self recordedObservationsFor: interfaceADefinition).
	self denyEmpty: (self recordedObservationsFor: interfaceBDefinition)