API
bufferReader

	^BufferPluggableReader
		on: source
		withDataDo: [ :data | monitor process: data ]