instance creation
labeled: label with: measure changingModelWith: newUnitAsArgumentBlock and: unitOptions

	self assertUnitOf: measure isIn: unitOptions.
	^self new
		initializeLabeled: label
		with: measure
		changingModelWith: newUnitAsArgumentBlock
		and: unitOptions
