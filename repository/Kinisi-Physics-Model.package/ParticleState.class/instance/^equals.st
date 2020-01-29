comparing
= anObject

	^self class = anObject class
		and: [ self particleName = anObject particleName
			and: [ self mass = anObject mass
				and: [ self position = anObject position
					and: [ self velocity = anObject velocity
						and: [ self acceleration = anObject acceleration ] ] ] ] ]