examples
exampleObservableUniverseStateWithTwoStatesGraphic

	"based on RTInteractionExample >> exampleGridDraggable"
	
	| view particleAShape particleBShape particlesGroup |
	view := RTView new.
	"Background color"
	view canvas color: Color gray.
	"#@: add an interaction to the node"
	view @ RTDraggableView.
	view
		@
			(RTGridView new
				color: Color red;
				gridSize: 10). "Grid size - separation between lines of the grid"
	view @ RTZoomableView.
	
	"Create shapes for particles"
	particleAShape := RTEllipse new
		borderColor: Color black;
		color: (Color green alpha: 0.6);
		size: 30.
	particleBShape := RTEllipse new
		borderColor: Color black;
		color: (Color red alpha: 0.6);
		size: 30.
	"Adding particles to grid"
	particlesGroup := RTGroup new.
	particlesGroup add: (particleAShape elementOn: #ParticleA).
	particlesGroup add: (particleBShape elementOn: #ParticleB).
	view addAll: particlesGroup.
	"particlesGroup first @ (RTDraggableSnapToGrid new gridSize: 40).
	particlesGroup second @ (RTDraggableSnapToGrid new center gridSize: 40)."
	particlesGroup @ RTResizable.
	particlesGroup @ RTLabeled.
	"Particle in the origin"
	"If position is multiple of the grid size, then shapes are in points of the grid."
	particlesGroup first translateTo: 0 @ 0.
	particlesGroup second translateTo: 70 @ 110.
	^ view open