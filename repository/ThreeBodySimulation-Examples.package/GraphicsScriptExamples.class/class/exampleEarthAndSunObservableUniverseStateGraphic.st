examples - grid
exampleEarthAndSunObservableUniverseStateGraphic

	| view viewSize observableUniverseState gridScale positionTranslationBlock shapeSizes shapeColors |
	view := RTView new.
	"Background color"
	view canvas color: Color black.
	"#@: add an interaction to the node"
	"view @ RTDraggableView."
	viewSize := 1000 @ 1000.
	shapeSizes := Dictionary new.
	shapeSizes
		at: #Earth put: 10;
		at: #Sun put: 100.
	shapeColors := Dictionary new.
	shapeColors
		at: #Earth put: Color lightBlue;
		at: #Sun put: Color yellow.	
	gridScale := UnitProvider soleInstance kilometer with: 1e6.
	view @ RTZoomableView.
	view
		@
			(RTGridView new
				color: (Color gray alpha: 0.7);
				gridSize: 10). "Grid size - separation between lines of the grid"
	"massScale := UnitProvider soleInstance kilogram with: 1e6.
	sizeTranslationBlock := [:mass | mass / massScale ]"
	positionTranslationBlock := [:position | (position x / gridScale) @ (position y / gridScale) ].
	observableUniverseState := self earthAndSunSingleObservableUniverseState.
	observableUniverseState physicalStates do: [:physicalState |
		| particleName physicalStateShape physicalStateElement physicalStateElementPositionInGrid |
		particleName := physicalState particleName.
		physicalStateShape := RTEllipse new
			borderColor: Color black;
			color: (shapeColors at: particleName);
			size: (shapeSizes at: particleName).
		physicalStateElement := physicalStateShape elementOn: particleName.
		view add: physicalStateElement.
		physicalStateElementPositionInGrid :=  positionTranslationBlock value: physicalState position.
		physicalStateElement translateTo: physicalStateElementPositionInGrid.
		physicalStateElement @ RTLabeled ].

	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	view canvas camera focusOnCenter