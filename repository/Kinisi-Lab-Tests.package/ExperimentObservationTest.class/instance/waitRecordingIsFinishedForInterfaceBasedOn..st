support
waitRecordingIsFinishedForInterfaceBasedOn: interfaceDefinition

	| recorder |
	recorder := recorders at: interfaceDefinition name.
	self waitUnilIsFinished: recorder