initialization
= anotherObject

	^self class = anotherObject class
		and: [ self name = anotherObject name ]