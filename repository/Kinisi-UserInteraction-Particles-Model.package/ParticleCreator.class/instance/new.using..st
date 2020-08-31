private
new: property using: valuesGenerator

	| existingValues newValue |
	existingValues := targetUniverse particles collect: property.
	newValue := valuesGenerator next.
	[ existingValues includes: newValue ]
		whileTrue: [ newValue := valuesGenerator next ].

	^newValue