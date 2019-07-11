example - physical state rendering
exampleParticleObservationDraftGraphic

	"Description: ParticleObservationDraft rendering"
	| draft view viewSize particleShape physicalStateElement particleSize windowTitle |
	draft := ParticleObservationDraft new.

	view := RTView new.
	viewSize := 250@250.
	view canvas color: Color black.
	"Create shapes for particles"
	particleSize := (viewSize x min: viewSize y) // 4.
	particleShape := RTEllipse new
		borderColor: Color black;
		color: draft color;
		size: particleSize.

	"Adding particles to grid"
	physicalStateElement := particleShape elementOn: draft particleName asSymbol.
	view add: physicalStateElement.
	"If position is multiple of the grid size, then shapes are in points of the grid."
	physicalStateElement translateTo: 0@0. "Particle in the origin"
	physicalStateElement @ RTLabeled.
	
	VelocityRenderer new
		drawIn: view
		basedOn: draft velocity
		holdBy: physicalStateElement.
	
	PositionMarksRenderer new
		drawIn: view
		basedOn: draft position
		movedFromCenterBy: 80.
	AxisReferenceRenderer new drawIn: view movedFromCenterToLeftBottomCornerBy: 80.
			
	windowTitle := draft particleName.
	view openInWindowSized: viewSize titled: windowTitle.
	view canvas camera translateTo: 0@0