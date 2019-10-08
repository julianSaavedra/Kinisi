tests
testBufferConsumerLastResultIndicatesBufferIsNotStartedWhenNothingHasBeenStoredInBuffer

	| buffer consumer |
	buffer := BananaBuffer new.
	consumer := BufferResultDummyConsumer on: buffer.
	
	consumer processNextPackageFromBuffer.
	
	self assert: consumer lastResult equals: 'Buffer has not started yet' 