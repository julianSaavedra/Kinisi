tests
testReaderPerfomsEmptyActionIfNoNewLetterIsStoredInBuffer

	| buffer reader readData emptyActionWasPerfomed |
	buffer := Buffer new.
	readData := OrderedCollection new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [ :data | readData add: data ]
		ifBufferNotStartedDo: [  ]
		ifEmpty: [ emptyActionWasPerfomed := true ]
		ifClosed: [  ].

	buffer	store: 'a'.

	emptyActionWasPerfomed := false.	
	reader read.
	self deny: emptyActionWasPerfomed.
	
	reader read.
	self assert: emptyActionWasPerfomed