tests
testPositionReferenceMarksAreRenderedInView

	| view position elementModels |
	view := RTView new.
	position := MeasureVector x: 100 y: 37.5 z: 0 with: UnitProvider soleInstance meter.
	
	PositionMarksRenderer new
		drawIn: view
		basedOn: position
		movedFromCenterBy: 100.
	
	elementModels := view elements collect: [:element | element model ].
	self
		assertCollection: elementModels
		includesAll: #(#'100 m' #'37.5 m')