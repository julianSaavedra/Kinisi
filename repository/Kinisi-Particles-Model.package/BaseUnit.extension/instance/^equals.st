*Kinisi-Particles-Model
= anObject

	^self class = anObject class and: [
		self nameForMany = anObject nameForMany
			and: [ self nameForOne = anObject nameForOne
				and: [ self sign = anObject sign ] ] ]