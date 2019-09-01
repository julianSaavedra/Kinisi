actions
drawIn: view basedOn: particleState

	| element |

	element := self elementBasedOn: particleState.
	self addShapeTo: element.
	view add: element.
	self translate: element basedOn: particleState.
	self labeledIfEnabled: element.
	shouldRenderVelocity
		ifTrue: [ VelocityRenderer new
				drawIn: view
				basedOn: particleState velocity
				holdBy: element ].
	shouldRenderPositionMarks
		ifTrue: [ PositionMarksRenderer new
				drawIn: view
				basedOn: particleState position
				movedFromCenterBy: 100 ]