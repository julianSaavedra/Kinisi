comparing
= aUnit

	^self class == aUnit class and: [
		self base == aUnit base and: [
			self exponent = aUnit exponent ]
		]
