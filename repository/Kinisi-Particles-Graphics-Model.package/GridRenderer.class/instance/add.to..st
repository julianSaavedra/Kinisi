rendering
add: lines to: canvas

	| lineBuilder gridColor |
	gridColor := color translucent.
	lines do: [ :line | 
			self pointFor: line key with: gridColor in: canvas.
			self pointFor: line value with: gridColor in: canvas ].

	lineBuilder := RSLineBuilder line.
	lineBuilder canvas: canvas.
	lineBuilder width: 1.
	lineBuilder color: gridColor.
	lineBuilder useAssociations: lines