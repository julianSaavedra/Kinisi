graphic - nice to have
examplePositionReferenceInView

	| view viewSize physicalState particleShape physicalStateElement |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 250@250.
	physicalState := self physicalStateInOriginWithTwoKilogramsAndOneVelocityUnitInEachComponent.	
	"Create shapes for particles"
	particleShape := RTEllipse new
		borderColor: Color black;
		color: (Color blue alpha: 0.7);
		size: 55.

	"Adding particles to grid"
	physicalStateElement := particleShape elementOn: physicalState particleName asSymbol.
	view add: physicalStateElement.
	physicalStateElement translateTo: 0@0. "Particle in the origin"
	physicalStateElement @ RTLabeled.

	PositionMarksRenderer new
		drawIn: view
		basedOn: physicalState position
		movedFromCenterBy: 80.
	AxisReferenceRenderer new drawIn: view movedFromCenterToLeftBottomCornerBy: 80.
	
	view openInWindowSized: viewSize titled: 'Position Reference'.
	
	view canvas camera translateTo: 0@0