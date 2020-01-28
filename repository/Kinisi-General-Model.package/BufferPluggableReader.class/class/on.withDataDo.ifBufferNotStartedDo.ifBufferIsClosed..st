instance creation
on: buffer withDataDo: dataAction ifBufferNotStartedDo: notStartedAction ifBufferIsClosed: closedAction
 
	^self new
		initializeOn: buffer
		withDataDo: dataAction
		ifBufferNotStartedDo: notStartedAction
		ifBufferIsClosed: closedAction