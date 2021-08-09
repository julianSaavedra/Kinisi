comparing
min: aState

	 ^self < aState
		ifTrue: [ self ]
		ifFalse: [ aState ]