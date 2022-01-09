private
named: aName with: extractorBlock

	self assertValidName: aName.
	^self new
		initializeForPropertyNamed: aName
		with: extractorBlock