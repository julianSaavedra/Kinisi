action
drawIn: aView basedOn: aPhysicalState

	| element |
	element := RTElement new.
	element model: aPhysicalState.
	figureDecoration applyOn: element.
	aView add: element.
	positionDecoration applyOn: element.
	elementLabelling ifTrue: [(LabelDecoration using: [:model | model particleName ]) applyOn: element ]