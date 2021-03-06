tests
testReaderReadsRemainingLettersInBufferAndPerformsClosedBufferActionWhenBufferIsClosed

	| buffer reader readData keepReading |
	buffer := Buffer new.
	readData := OrderedCollection new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [ :data | readData add: data ]
		ifBufferNotStartedDo: [  ]
		ifEmpty: [  ]
		ifClosed: [ keepReading := false ].

	buffer
		store: 'a';
		store: 'b';
		store: 'c';
		close.
	keepReading := true.
	[ keepReading ]
		whileTrue: [ self
				deny: readData size > 3
				description: 'More data was read than expected.'.
			reader read ].

	self assert: readData first equals: 'a'.
	self assert: readData second equals: 'b'.
	self assert: readData third equals: 'c'