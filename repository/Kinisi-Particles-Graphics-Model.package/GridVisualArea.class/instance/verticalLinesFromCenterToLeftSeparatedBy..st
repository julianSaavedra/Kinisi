accessing
verticalLinesFromCenterToLeftSeparatedBy: separation

	| lines verticalCenterLine finalLeftPosition currentLine |
	lines := OrderedCollection new.
	verticalCenterLine := self verticalCenterLine.
	lines add: verticalCenterLine.
	finalLeftPosition := self leftSideLine start x.
	currentLine := verticalCenterLine newLineTranslatedToLeftBy: separation.
	[ currentLine start x >= finalLeftPosition ] whileTrue: [
		lines add: currentLine.
		currentLine := currentLine newLineTranslatedToLeftBy: separation ].
	^lines