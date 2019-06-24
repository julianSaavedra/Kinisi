comparing
= anObject

	^ self class = anObject class
		and: [ self hasSamePhysicalStatesAs: anObject ]