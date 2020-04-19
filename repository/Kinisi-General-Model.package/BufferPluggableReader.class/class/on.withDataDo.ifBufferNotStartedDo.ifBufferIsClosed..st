instance creation
on: buffer withDataDo: dataAction ifBufferNotStartedDo: notStartedAction ifBufferIsClosed: closedAction
 
	self assertValidDataAction: dataAction.
	^self new
		initializeOn: buffer
		withDataDo: dataAction
		ifBufferNotStartedDo: notStartedAction
		ifBufferIsClosed: closedAction