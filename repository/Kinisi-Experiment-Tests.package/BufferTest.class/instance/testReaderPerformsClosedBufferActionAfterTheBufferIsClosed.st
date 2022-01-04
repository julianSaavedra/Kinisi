tests
testReaderPerformsClosedBufferActionAfterTheBufferIsClosed

	| buffer reader closedBufferActionWasPerformed |

	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [ :data |  ]
		ifBufferNotStartedDo: [  ]
		ifEmpty: [  ]
		ifClosed: [ closedBufferActionWasPerformed := true ].

	closedBufferActionWasPerformed := false.
	buffer close.
	reader read.

	self assert: closedBufferActionWasPerformed