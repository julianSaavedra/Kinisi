initialization
initializeOn: targetBuffer withDataDo: dataAction ifBufferNotStartedDo: notStartedAction ifBufferIsClosed: closedAction

	buffer := targetBuffer.
	rawDataAction := dataAction.
	bufferNotStartedAction := notStartedAction.
	bufferIsClosed := closedAction