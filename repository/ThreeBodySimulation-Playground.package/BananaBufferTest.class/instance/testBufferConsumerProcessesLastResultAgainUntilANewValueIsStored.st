tests
testBufferConsumerProcessesLastResultAgainUntilANewValueIsStored

	| buffer consumer |
	buffer := BananaBuffer new.
	consumer := BufferResultDummyConsumer on: buffer.
	
	buffer store: 1.
	buffer store: 2.
	consumer processNextPackageFromBuffer.
	consumer processNextPackageFromBuffer.
	consumer processNextPackageFromBuffer.
		
	self assert: consumer lastResult equals: 'Last value from buffer is 2' 