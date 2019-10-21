tests
testBufferReaderReadsLetterBAgainIfNoNewLetterIsStoredInBuffer

	| buffer reader readData |
	buffer := Buffer new.
	readData := OrderedCollection new.
	reader := BufferPluggableReader on: buffer withDataDo: [:data | readData add: data ].
	
	buffer store: 'a'; store: 'b'.
	reader read; read; read; read.
		
	self assert: readData size equals: 4.
	self assert: readData last equals: 'b'