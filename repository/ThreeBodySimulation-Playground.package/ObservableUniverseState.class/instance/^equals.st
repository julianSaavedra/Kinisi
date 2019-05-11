comparing
= anObject

	^ self class = anObject class
		and: [ self hasSameParticlesAs: anObject ]