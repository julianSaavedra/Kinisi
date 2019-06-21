example - physical state rendering
examplePhysicalStateIndividualGraphic

	"Description: render a single particle in an no grid canvas."
	| physicalState view viewSize particleSizeBock vectorXYNormalizerBlock particleShape velocityShapeEndPoint velocityEndPointElement velocityShape particleElement particleColor particleSize windowTitle axisReferenceRenderer|
	physicalState := self physicalStateInOriginWithTwoKilogramsAndOneVelocityUnitInEachComponent.	
	
	view := RTView new.
	viewSize := 250@250.
	view canvas color: Color black.

	particleColor := Color blue alpha: 0.7.
	"particleSizeBock := [:physicalState :viewSize |
		| minViewExtension normalizedMass |
		minViewExtension := viewSize x min: viewSize y.
		normalizedMass := physicalState mass convertToBaseUnit.
		]."
	particleSize := (viewSize x min: viewSize y) // 4.
	"Create shapes for particles"
	particleShape := RTEllipse new
		borderColor: Color black;
		color: particleColor;
		size: particleSize.

	"Adding particles to grid"
	particleElement := particleShape elementOn: physicalState particleName asSymbol.
	view add: particleElement.
	particleElement translateTo: 0@0.
	particleElement @ RTLabeled.

	"Velocity vector rendering"
	velocityShapeEndPoint := RTEllipse new
		borderColor: Color black;
		color: Color black;
		size: 0.
	velocityEndPointElement := velocityShapeEndPoint elementOn: #Velocity.
	velocityShape := RTArrowedLine new.
	velocityShape head size: 10; width: 3.
	velocityShape
		width: 3;
		color: Color red.
	view add: velocityEndPointElement.
	velocityEndPointElement @RTLabeled.
	RTEdgeBuilder new
		view: view;
		shape: velocityShape;
		linkElements: (Array with: particleElement with: velocityEndPointElement).	
	vectorXYNormalizerBlock := [:vector |
		| normalizedVector vectorEndPointExtension normalizedVectorPoint |
		normalizedVector := vector normalized.
		vectorEndPointExtension := (viewSize x min: viewSize y) // 2.
		normalizedVectorPoint := normalizedVector x @ normalizedVector y negated.
		normalizedVectorPoint * vectorEndPointExtension
		  ].
	"velocityEndPointElement translateTo: 100@0.	"
	velocityEndPointElement translateTo: (vectorXYNormalizerBlock value: physicalState velocity).

	"Particle in the origin"
	"If position is multiple of the grid size, then shapes are in points of the grid."
	"particlesGroup first translateTo: gridPosition."

	axisReferenceRenderer := AxisReferenceRenderer new.
	axisReferenceRenderer drawIn: view movedFromCenterToLeftBottomCornerBy: 100.

	windowTitle := physicalState particleName.
	view openInWindowSized: viewSize titled: windowTitle