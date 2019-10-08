tests
testBufferConsumerProcessesResultsInTheSameOrderAsTheyWereStoredsInTheBuffer

	| buffer consumer |
	buffer := BananaBuffer new.
	consumer := BufferResultDummyConsumer on: buffer.
	
	buffer store: 1.
	consumer processNextPackageFromBuffer.
	self assert: consumer lastResult equals: 'Last value from buffer is 1'.
	
	buffer store: 2.
	consumer processNextPackageFromBuffer.
	self assert: consumer lastResult equals: 'Last value from buffer is 2' 