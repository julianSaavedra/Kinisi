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
				holdBy: element ].
	shouldRenderPositionMarks
		ifTrue: [ PositionMarksRenderer new
				drawIn: view
				basedOn: particle position
				movedFromCenterBy: 100 ]