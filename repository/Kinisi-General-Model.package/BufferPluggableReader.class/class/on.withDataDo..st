instance creation
on: buffer withDataDo: dataAction

	^self
		on: buffer
		whenReading: dataAction
		ifBufferNotStartedDo: [  ]
		ifEmpty: [  ]
		ifClosed: [  ]