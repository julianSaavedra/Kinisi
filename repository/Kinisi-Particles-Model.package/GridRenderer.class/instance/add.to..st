rendering
add: lines to: canvas

	| lineBuilder gridColor associations |
	associations := OrderedCollection new.
	gridColor := color translucent.
	lines do: [ :line | 
			self pointFor: line start with: gridColor in: canvas.
			self pointFor: line end with: gridColor in: canvas.
			associations add: line start-> line end ].

	lineBuilder := RSLineBuilder line.
	lineBuilder canvas: canvas.
	lineBuilder width: 1.
	lineBuilder color: gridColor.
	lineBuilder useAssociations: associations