instance creation
on: buffer whenReading: dataAction ifBufferNotStartedDo: notStartedAction ifEmpty: emptyAction ifClosed: closedAction

	self assertValidDataAction: dataAction.
	self assertValidNotStartedAction: notStartedAction.
	self assertValidEmptyAction: emptyAction.
	self assertValidClosedAction: closedAction.
	^self new
		initializeOn: buffer
		whenReading: dataAction
		ifBufferNotStartedDo: notStartedAction
		ifEmpty: emptyAction
		ifClosed: closedAction