initialization
initializeOn: targetBuffer whenReading: dataAction ifBufferNotStartedDo: aBufferNotStartedAction ifEmpty: aBufferIsEmptyAction ifClosed: aBufferIsclosedAction

	buffer := targetBuffer.
	rawDataAction := dataAction.
	notStartedBufferAction := aBufferNotStartedAction.
	emptyBufferAction := aBufferIsEmptyAction.
	closedBufferAction := aBufferIsclosedAction