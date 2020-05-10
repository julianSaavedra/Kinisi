tests
testReaderReadsLettersFromBufferInTheSameOrderAsLettersWereStoredInBuffer

	| buffer reader readData |
	buffer := Buffer new.
	readData := OrderedCollection new.
	reader := BufferPluggableReader on: buffer whenReading: [:data | readData add: data ].
	
	buffer store: 'a'; store: 'b'; store: 'c'.
	reader read; read; read.
	
	self assert: readData first equals: 'a'.
	self assert: readData second equals: 'b'.
	self assert: readData third equals: 'c'