accessing
horizontalLinesFromCenterToTopSeparatedBy: separation

	| horizontalCenterLine lines finalTopPosition currentLine |
	horizontalCenterLine := self horizontalCenterLine.
	lines := OrderedCollection with: horizontalCenterLine.
	finalTopPosition := self topSide start y.
	currentLine := horizontalCenterLine newLineTranslatedToTopBy: separation.
	[ currentLine start y >= finalTopPosition ] whileTrue: [
		lines add: currentLine.
		currentLine := currentLine newLineTranslatedToTopBy: separation].
	^lines