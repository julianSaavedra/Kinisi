examples - grid
exampleBasicObservableUniverseStateWithTwoStatesGraphic

	"based on RTInteractionExample >> exampleGridDraggable"
	
	| view particleAShape particleBShape particleAElement particleBElement |
	view := RTView new.
	"Background color"
	view canvas color: Color black.
	"#@: add an interaction to the node"
	view @ RTDraggableView.
	view
		@
			(RTGridView new
				color: (Color gray alpha: 0.7);
				gridSize: 10). "Grid size - separation between lines of the grid"
	view @ RTZoomableView.
	
	particleAShape := RTEllipse new
		borderColor: Color black;
		color: (Color green alpha: 0.6);
		size: 30.
	particleAElement := particleAShape elementOn: #ParticleA.
	view add: particleAElement.
	particleAElement translateTo: 0 @ 0.
	particleAElement @ RTLabeled.
	
	particleBShape := RTEllipse new
		borderColor: Color black;
		color: (Color red alpha: 0.6);
		size: 30.
	particleBElement := particleBShape elementOn: #ParticleB.
	view add: particleBElement.
	particleBElement translateTo: 70 @ 110.
	particleBElement @ RTLabeled.
	"particlesGroup first @ (RTDraggableSnapToGrid new gridSize: 40).
	particlesGroup second @ (RTDraggableSnapToGrid new center gridSize: 40)."
	"particlesGroup @ RTResizable."
	"If position is multiple of the grid size, then shapes are in points of the grid."
	
	AxisReferenceRenderer new drawIn: view.
	^ view open