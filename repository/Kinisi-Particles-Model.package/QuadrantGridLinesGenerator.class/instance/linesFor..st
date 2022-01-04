accessing
linesFor: canvas

	| gridArea lines |
	gridArea := GridVisualArea from: canvas.
	lines := OrderedCollection new.
	lines
		add: gridArea topSideLine;
		add: gridArea horizontalCenterLine;
		add: gridArea bottomSideLine;
		add: gridArea leftSideLine;
		add: gridArea verticalCenterLine;
		add: gridArea rightSideLine.
	^lines