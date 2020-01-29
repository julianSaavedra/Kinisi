initialization
newBufferReadingProcess

	| bufferReader |
	bufferReader := BufferPluggableReader
		on: sourceBuffer
		withDataDo: [:data | self process: data ]
		ifBufferNotStartedDo: [ ]
		ifBufferIsClosed: [ self terminate ].
	^[[ true ] whileTrue: [
		period wait.
		bufferReader read ] ] newProcess