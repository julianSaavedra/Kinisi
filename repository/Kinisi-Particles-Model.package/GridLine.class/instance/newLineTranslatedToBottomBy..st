accessing
newLineTranslatedToBottomBy: movement

	| downTranslation |
	downTranslation := 0 @ movement.
	^self newLineTranslatedBy: downTranslation