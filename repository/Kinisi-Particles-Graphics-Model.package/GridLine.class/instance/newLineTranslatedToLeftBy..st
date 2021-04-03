accessing
newLineTranslatedToLeftBy: movement
 
	| leftTranslation |
	leftTranslation := movement negated @ 0.
	^self newLineTranslatedBy: leftTranslation