accessing
verticalLinesFromCenterToRightSeparatedBy: separation

	| verticalCenterLine lines finalRightPosition currentLine |
	verticalCenterLine := self verticalCenterLine.
	lines := OrderedCollection new.
	lines add: verticalCenterLine.
	finalRightPosition := self rightSideLine start x.
	currentLine := verticalCenterLine newLineTranslatedToRightBy: separation.
	[ currentLine start x <= finalRightPosition ] whileTrue: [
		lines add: currentLine.
		currentLine := currentLine newLineTranslatedToRightBy: separation ].
	^lines