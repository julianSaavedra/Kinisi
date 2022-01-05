initialization
initializeFrom: buffer
	
	bufferReader := BufferPluggableReader
		on: buffer
		whenReading: [:observation | self processObservation: observation ]
		ifBufferNotStartedDo: [ self noObservationIsAvailable ]
		ifEmpty: [self noObservationIsAvailable]
		ifClosed: [ self observationHasFinished ]