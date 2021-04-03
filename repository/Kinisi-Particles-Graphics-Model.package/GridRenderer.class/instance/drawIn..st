rendering
drawIn: canvas

	(linesGenerator linesFor: canvas)
		ifNotEmpty: [:lines | self add: lines to: canvas ]