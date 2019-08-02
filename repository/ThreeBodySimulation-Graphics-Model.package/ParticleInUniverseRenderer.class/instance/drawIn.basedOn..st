action
drawIn: aView basedOn: aPhysicalState

	| element shape point |
	element := RTElement new.
	element model: aPhysicalState.
	shape := RTEllipse new
			borderColor: Color black;
			color: color;
			size: (massTransformation value: aPhysicalState mass).
	element addShape: shape.
	aView add: element.
	point := positionTranformation value: aPhysicalState position.
	element translateTo: (point x @ point y negated).
	elementLabelling ifTrue: [(LabelDecoration using: [:model | model particleName ]) applyOn: element ]