actions
drawIn: view basedOn: particle

	| element |
	element := self elementBasedOn: particle.
	self addShapeTo: element.
	view add: element.
	self translate: element basedOn: particle.
	self labeledIfEnabled: element.
	shouldRenderVelocity
		ifTrue: [ VelocityRenderer new
				drawIn: view
				basedOn: particle velocity
				for: element ].
	shouldRenderPositionMarks
		ifTrue: [ PositionMarksRenderer new
				drawIn: view
				basedOn: particle position
				for: 100 ]