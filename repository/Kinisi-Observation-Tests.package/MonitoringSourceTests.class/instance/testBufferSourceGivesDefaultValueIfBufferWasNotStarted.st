tests
testBufferSourceGivesDefaultValueIfBufferWasNotStarted

	| source |
	buffer := Buffer new.
	source := MonitoringBufferedSource
		on: buffer
		ifNoDataAvailableUse: #DefaultValue.

	self assert: source next equals: #DefaultValue