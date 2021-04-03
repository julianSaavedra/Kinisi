accessing
newLineTranslatedToTopBy: movement

	| upTranslation |
	upTranslation := 0 @ movement negated.
	^self newLineTranslatedBy: upTranslation