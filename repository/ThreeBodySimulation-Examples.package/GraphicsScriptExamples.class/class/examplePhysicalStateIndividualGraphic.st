example - physical state rendering
examplePhysicalStateIndividualGraphic

	"Description: render a single particle in an no grid canvas."
	| physicalState view viewSize particleShape physicalStateElement particleColor particleSize windowTitle |
	physicalState := self physicalStateInOriginWithTwoKilogramsAndOneVelocityUnitInEachComponent.	
	view := RTView new.
	viewSize := 250@250.
	view canvas color: Color black.
	
	"Create shapes for particles"
	particleColor := Color blue alpha: 0.7.
	particleSize := (viewSize x min: viewSize y) // 4.
	particleShape := RTEllipse new
		borderColor: Color black;
		color: particleColor;
		size: particleSize.

	"Adding particles to grid"
	physicalStateElement := particleShape elementOn: physicalState particleName asSymbol.
	view add: physicalStateElement.
	"If position is multiple of the grid size, then shapes are in points of the grid."
	physicalStateElement translateTo: 0@0. "Particle in the origin"
	physicalStateElement @ RTLabeled.
	
	VelocityRenderer new
		drawIn: view
		basedOn: physicalState velocity
		holdBy: physicalStateElement.
	
	AxisReferenceRenderer new drawIn: view movedFromCenterToLeftBottomCornerBy: 100.

	windowTitle := physicalState particleName.
	view openInWindowSized: viewSize titled: windowTitle