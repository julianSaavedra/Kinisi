support
waitRecordingIsFinishedFor: interfaceDefinition

	[ (recordKeepers at: interfaceDefinition name) wait ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ]