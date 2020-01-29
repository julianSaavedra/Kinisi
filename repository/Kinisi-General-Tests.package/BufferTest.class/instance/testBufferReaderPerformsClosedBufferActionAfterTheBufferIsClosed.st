tests
testBufferReaderPerformsClosedBufferActionAfterTheBufferIsClosed

	| buffer reader closedBufferActionWasPerformed |
	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		withDataDo: [:data | ]
		ifBufferNotStartedDo: [ ]
		ifBufferIsClosed: [ closedBufferActionWasPerformed := true ].
	
	closedBufferActionWasPerformed := false.
	buffer close.
	reader read.
	
	self assert: closedBufferActionWasPerformed