tests
testBufferConsumerLastResultIndicatesBufferIsClosedAfterTheBufferIsClosed

	| buffer consumer |
	buffer := BananaBuffer new.
	consumer := BufferResultDummyConsumer on: buffer.
	
	buffer close.
	consumer processNextPackageFromBuffer.
	
	self assert: consumer lastResult equals: 'Buffer is closed.' 