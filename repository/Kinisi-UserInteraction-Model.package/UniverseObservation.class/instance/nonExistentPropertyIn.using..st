private - particle creation
nonExistentPropertyIn: existingValues using: valuesGenerator

	| newValue |
	newValue := valuesGenerator next.
	[ existingValues includes: newValue ]
		whileTrue: [ newValue := valuesGenerator next ].

	^newValue