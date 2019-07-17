example - single particle rendering
exampleParticleObservationDraftGraphic

	"Description: ParticleObservationDraft rendering"

	| draft view viewSize particleShape physicalStateElement particleSize windowTitle |

	"Create shapes for particles"
	"Adding particles to grid"
	"If position is multiple of the grid size, then shapes are in points of the grid."
	"Particle in the origin"
	draft := self blueTwoKgOneMeterInEachDirectionParticleDraft.
	view := RTView new.
	viewSize := 250 @ 250.
	view canvas color: Color black.
	particleSize := (viewSize x min: viewSize y) // 4.
	particleShape := RTEllipse new
		borderColor: Color black;
		color: draft color;
		size: particleSize.
	physicalStateElement := particleShape elementOn: draft.
	view add: physicalStateElement.
	physicalStateElement translateTo: 0 @ 0.
	physicalStateElement @ RTLabeled.
	VelocityRenderer new
		drawIn: view
		basedOn: draft velocity
		holdBy: physicalStateElement.
	PositionMarksRenderer new
		drawIn: view
		basedOn: draft position
		movedFromCenterBy: 80.
	AxisReferenceRenderer new
		drawIn: view
		movedFromCenterToLeftBottomCornerBy: 80.
	windowTitle := draft particleName.
	view openInWindowSized: viewSize titled: windowTitle.
	view canvas camera translateTo: 0 @ 0