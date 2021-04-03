accessing
horizontalLinesFromCenterToBottomSeparatedBy: separation

	| horizontalCenterLine lines currentLine finalBottomPosition |
	horizontalCenterLine := self horizontalCenterLine.
	lines := OrderedCollection with: horizontalCenterLine.
	finalBottomPosition := self bottomSideLine start y.
	currentLine := horizontalCenterLine newLineTranslatedToBottomBy: separation.
	[ currentLine start y <= finalBottomPosition ] whileTrue: [
		lines add: currentLine.
		currentLine := currentLine newLineTranslatedToBottomBy: separation].
	^lines