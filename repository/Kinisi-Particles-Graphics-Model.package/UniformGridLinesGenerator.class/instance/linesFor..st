accessing
linesFor: canvas

	| gridArea lines |
	gridArea := GridVisualArea from: canvas.
	lines := OrderedCollection new.
	lines
		addAll: (gridArea verticalLinesFromCenterToLeftSeparatedBy: linesDistance);
		addAll: (gridArea verticalLinesFromCenterToRightSeparatedBy: linesDistance);
		addAll: (gridArea horizontalLinesFromCenterToTopSeparatedBy: linesDistance);
		addAll: (gridArea horizontalLinesFromCenterToBottomSeparatedBy: linesDistance).
	^lines