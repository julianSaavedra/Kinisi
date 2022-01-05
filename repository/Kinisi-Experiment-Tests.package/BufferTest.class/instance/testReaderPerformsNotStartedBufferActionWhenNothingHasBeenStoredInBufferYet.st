tests
testReaderPerformsNotStartedBufferActionWhenNothingHasBeenStoredInBufferYet

	| buffer reader notStartedBufferActionWasPerformed |
	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [ :data |  ]
		ifBufferNotStartedDo: [ notStartedBufferActionWasPerformed := true ]
		ifEmpty: [  ]
		ifClosed: [  ].

	notStartedBufferActionWasPerformed := false.
	reader read.

	self assert: notStartedBufferActionWasPerformed