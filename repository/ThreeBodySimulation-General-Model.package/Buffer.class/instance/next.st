accessing
next

	values ifNotEmpty: [ lastReadValue := DataPackage with: values removeFirst ].
	^lastReadValue
		ifNil: [ NotStartedBufferPackage new ]
		ifNotNil: [ lastReadValue ]
	