tests
testReaderPerformsNotStartedBufferActionWhenNothingHasBeenStoredInBufferYet

	| buffer reader notStartedBufferActionWasPerformed |
	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		withDataDo: [:data | ]
		ifBufferNotStartedDo: [ notStartedBufferActionWasPerformed := true ]
		ifBufferIsClosed: [].
	
	notStartedBufferActionWasPerformed := false.
	reader read.
	
	self assert: notStartedBufferActionWasPerformed