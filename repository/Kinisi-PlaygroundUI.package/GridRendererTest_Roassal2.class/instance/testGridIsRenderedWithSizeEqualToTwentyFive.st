tests
testGridIsRenderedWithSizeEqualToTwentyFive

	| view gridSize renderer |
	view := RTView new.
	gridSize := 25.
	renderer := GridRenderer with: Color red and: gridSize.
		
	renderer drawIn: view basedOn: nil.

	self assert: [ :grid | grid gridSize = gridSize ] withGridIn: view