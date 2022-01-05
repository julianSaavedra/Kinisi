tests
testPositionReferenceMarksAreRenderedInView

	| view position elementModels particle renderer |
	view := RTView new.
	position := MeasureVector x: 100 y: -37.5 z: 0 with: UnitProvider soleInstance meter.
	particle := PhysicsTestResource new physicalStateIn: position.
	particleElement := RTEllipse new elementOn: particle.
	renderer := PositionMarksRenderer movedBy: 100.
	
	renderer
		drawIn: view
		basedOn: particle
		for: particleElement.
	
	elementModels := view elements collect: [:element | element model ].
	self
		assertCollection: elementModels
		includesAll: #(#'X: 100 m' #'Y: -37.5 m')