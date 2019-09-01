wrapping
valueOf: selector whenSentTo: receiver with: arguments and: realReceiverMethod

	preMethodBlock value: receiver value: arguments.
	^realReceiverMethod
		ifNil: [receiver perform: selector withArguments: arguments inSuperclass: receiver class superclass]
		ifNotNil: [:method | receiver withArgs: arguments executeMethod: method ]