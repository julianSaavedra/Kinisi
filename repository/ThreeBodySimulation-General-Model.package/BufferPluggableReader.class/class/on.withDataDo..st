instance creation
on: buffer withDataDo: dataAction
 
	^self
		on: buffer
		withDataDo: dataAction
		ifBufferNotStartedDo: []
		ifBufferIsClosed: []