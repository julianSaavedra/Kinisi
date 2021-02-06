instance creation
forNumberIn: color with: font and: size over: background

	self assertValidSize: size.
	self assertValidFont: font.
	^self new
		initializeForNumberIn: color
		with: font
		and: size
		over: background