comparing
= anObject

	^self class = anObject class
		and: [ self position = anObject position
			and: [ self velocity = anObject velocity
				and: [ self acceleration = anObject acceleration ] ] ]