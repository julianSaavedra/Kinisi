private
calculateNextOffset

	offset isZero
		ifTrue: [ offset := offset + 0.1 ]
		ifFalse: [ 
			offset negative
				ifTrue: [ offset := offset * -1 + 0.1 ]
				ifFalse: [ offset := offset * -1 ] ]