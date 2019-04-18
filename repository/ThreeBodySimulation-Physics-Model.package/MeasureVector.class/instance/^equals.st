comparing
= anObject

	^self class == anObject class
		and: [ self x = anObject x
			and: [ self y = anObject y
				and: [ self z = anObject z ] ] ]