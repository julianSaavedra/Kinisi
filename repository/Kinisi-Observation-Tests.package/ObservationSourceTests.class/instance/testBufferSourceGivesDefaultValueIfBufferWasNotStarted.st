tests - to review
testBufferSourceGivesDefaultValueIfBufferWasNotStarted

	| source |
	buffer := Buffer new.
	source := ObservationBufferedSource
		on: buffer
		ifNoDataAvailableUse: #DefaultValue.

	self assert: source next equals: #DefaultValue