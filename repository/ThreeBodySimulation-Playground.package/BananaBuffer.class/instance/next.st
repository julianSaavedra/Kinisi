accessing
next

	values ifNotEmpty: [ lastReadValue := DataBananaBufferPackage with: values removeFirst ].
	^lastReadValue
		ifNil: [ NotStartedBananaBufferPackage new ]
		ifNotNil: [ lastReadValue ]
	