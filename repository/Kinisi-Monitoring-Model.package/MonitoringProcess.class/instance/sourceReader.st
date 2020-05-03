initialization
sourceReader

	^BufferPluggableReader
		on: source
		withDataDo: [ :data | monitor process: data ]