instance creation
on: buffer whenReading: dataAction ifBufferNotStartedDo: notStartedAction ifEmpty: emptyAction ifClosed: closedAction

	self assertValidDataAction: dataAction.
	^self new
		initializeOn: buffer
		whenReading: dataAction
		ifBufferNotStartedDo: notStartedAction
		ifEmpty: emptyAction
		ifClosed: closedAction