initialization
newBufferReadingProcess

	| bufferReader |
	bufferReader := BufferPluggableReader on: sourceBuffer withDataDo: [ :data | monitor process: data ].
	^[[ true ] whileTrue: [
		period wait.
		bufferReader read ] ] newProcess