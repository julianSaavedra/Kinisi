tests
testReaderPerformsEmptyActionUntillLetterCIsStoredInBuffer

	| buffer reader readData emptyActionPerformingTimes |
	buffer := Buffer new.
	readData := OrderedCollection new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [:data | readData add: data ]
		ifBufferNotStartedDo: [ ]
		ifEmpty: [ emptyActionPerformingTimes := emptyActionPerformingTimes + 1 ]
		ifClosed: [ ].

	emptyActionPerformingTimes := 0.
	buffer store: 'a'; store: 'b'.
	reader read; read.
	self assert: readData size equals: 2.
	self assert: readData last equals: 'b'.
	self assert: emptyActionPerformingTimes equals: 0.
	
	reader read; read.
	self assert: readData size equals: 2.
	self assert: readData last equals: 'b'.
	self assert: emptyActionPerformingTimes equals: 2.
	
	buffer store: 'c'.
	reader read.
	
	self assert: readData size equals: 3.
	self assert: readData last equals: 'c'.	
	self assert: emptyActionPerformingTimes equals: 2