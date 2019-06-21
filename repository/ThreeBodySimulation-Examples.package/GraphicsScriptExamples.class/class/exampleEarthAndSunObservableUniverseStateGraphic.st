examples - grid
exampleEarthAndSunObservableUniverseStateGraphic

	| view particleAShape particleBShape particlesGroup observableUniverseState |
	observableUniverseState := self earthAndSunSingleObservableUniverseState.
	view := RTView new.
	"Background color"
	view canvas color: Color black.
	"#@: add an interaction to the node"
	"view @ RTDraggableView."
	view
		@
			(RTGridView new
				color: Color white;
				gridSize: 10). "Grid size - separation between lines of the grid"
	view @ RTZoomableView.
	"sizeNormalizerBlock := [:mass | | mass | mass  ]"
	"Create shapes for particles"
	particleAShape := RTEllipse new
		borderColor: Color black;
		color: Color lightBlue;
		size: 10.
	particleBShape := RTEllipse new
		borderColor: Color black;
		color: Color yellow;
		size: 100.
	"Adding particles to grid"
	particlesGroup := RTGroup new.
	particlesGroup add: (particleAShape elementOn: #Earth).
	particlesGroup add: (particleBShape elementOn: #Sun).
	view addAll: particlesGroup.
	"particlesGroup first @ (RTDraggableSnapToGrid new gridSize: 40).
	particlesGroup second @ (RTDraggableSnapToGrid new center gridSize: 40)."
	particlesGroup @ RTResizable.
	particlesGroup @ RTLabeled.
	"Particle in the origin"
	"If position is multiple of the grid size, then shapes are in points of the grid."
	particlesGroup first translateTo: 0 @ 100.
	particlesGroup second translateTo: 0 @ 0.
	^view open