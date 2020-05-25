initialization
newBufferReadingProcess

	| bufferReader |

	bufferReader := BufferPluggableReader
		on: sourceBuffer
		whenReading: [ :data | self process: data ]
		ifBufferNotStartedDo: [  ]
		ifEmpty: [ ]
		ifClosed: [ self terminate ].
	^ [ [ true ]
		whileTrue: [ period wait.
			bufferReader read ] ] newProcess