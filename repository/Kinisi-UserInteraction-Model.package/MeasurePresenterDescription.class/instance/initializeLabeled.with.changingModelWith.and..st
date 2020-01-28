initialization
initializeLabeled: aString with: aMeasure changingModelWith: newUnitAsArgumentBlock and: unitCollection
	
	label := aString.
	measure := aMeasure.
	modelChangingBlock := newUnitAsArgumentBlock.
	unitOptions := unitCollection
