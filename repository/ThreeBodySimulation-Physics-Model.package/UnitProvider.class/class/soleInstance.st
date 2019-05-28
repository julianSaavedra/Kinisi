instance creation
soleInstance

	^instance ifNil: [ instance := self new ]
	