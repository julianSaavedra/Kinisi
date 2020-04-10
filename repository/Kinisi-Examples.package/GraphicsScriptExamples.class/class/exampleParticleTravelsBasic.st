examples - animation
exampleParticleTravelsBasic

	| particleShape particleElement view initialPosition currentPosition animation |
	view := RTView new.
	"Background color"
	view canvas color: Color black.
	"#@: add an interaction to the node"
	view
		@
			(RTGridView new
				color: (Color green alpha: 0.5);
				gridSize: 10). "Grid size - separation between lines of the grid"
	
	initialPosition := 0 @ 0.
	"Create shapes for particles"
	particleShape := RTEllipse new
		borderColor: Color gray;
		color: (Color blue alpha: 0.7);
		size: 15.
	"Adding particles to grid"
	particleElement := particleShape elementOn: #Particle.
	view add: particleElement.
	particleElement @ RTLabeled.
	particleElement translateTo: initialPosition.
	view open.
	currentPosition := initialPosition.
	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 40.
	animation blockToExecute: [
		currentPosition := currentPosition  + (1@1).
		particleElement translateTo: currentPosition ].
	"Starts animation"
	animation inView: view.