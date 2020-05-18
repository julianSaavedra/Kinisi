initialization
initializeOn: aBuffer ifNoDataAvailableUse: defaultData

	bufferReader := BufferPluggableReader
		on: aBuffer
		whenReading: [:data | current := data ]
		ifBufferNotStartedDo: [ current := defaultData ]
		ifEmpty: [ current := defaultData ]
		ifClosed: [ current := defaultData ]