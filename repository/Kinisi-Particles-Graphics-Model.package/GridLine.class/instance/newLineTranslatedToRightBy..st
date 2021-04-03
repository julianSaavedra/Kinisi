accessing
newLineTranslatedToRightBy: movement
 
	| rightTranslation |
	rightTranslation := movement @ 0.
	^self newLineTranslatedBy: rightTranslation 
