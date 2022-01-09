private
forPropertyNamed: aName with: extractorBlock

	^self new
		initializeForPropertyNamed: aName
		with: extractorBlock