instance creation
on: buffer whenReading: dataAction

	^self
		on: buffer
		whenReading: dataAction
		ifBufferNotStartedDo: [  ]
		ifEmpty: [  ]
		ifClosed: [  ]