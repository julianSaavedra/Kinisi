tests
testPositionReferenceMarksAreRenderedInView

	| view position elementModels |
	view := RTView new.
	position := MeasureVector x: 100 y: 37.5 negated z: 0 with: UnitProvider soleInstance meter.
	
	PositionMarksRenderer new
		drawIn: view
		basedOn: position
		movedFromCenterBy: 100.
	
	elementModels := view elements collect: [:element | element model ].
	self
		assertCollection: elementModels
		includesAll: #(#'X: 100 m' #'Y: -37.5 m')