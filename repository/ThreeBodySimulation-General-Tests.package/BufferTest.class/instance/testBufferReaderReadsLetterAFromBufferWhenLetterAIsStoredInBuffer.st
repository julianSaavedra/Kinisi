tests
testBufferReaderReadsLetterAFromBufferWhenLetterAIsStoredInBuffer

	| buffer reader readData |
	buffer := Buffer new.
	reader := BufferPluggableReader on: buffer withDataDo: [:data | readData := data ].

	buffer store: 'a'.
	reader read.
	
	self assert: readData equals: 'a'