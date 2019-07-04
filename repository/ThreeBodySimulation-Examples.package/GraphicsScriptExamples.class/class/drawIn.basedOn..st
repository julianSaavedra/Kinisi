examples - grid
drawIn: descriptions basedOn: view

	| positionTranslationBlock gridScale |
	"#@: add an interaction to the node"
	view canvas clean.
	view @ RTZoomableView.
	view
		@
			(RTGridView new
				color: (Color gray alpha: 0.7);
				gridSize: 10).
	"Grid size - separation between lines of the grid"
	gridScale := UnitProvider soleInstance kilometer with: 0.5e6.
	"massScale := UnitProvider soleInstance kilogram with: 1e6.
	sizeTranslationBlock := [:mass | mass / massScale ]"
	positionTranslationBlock := [ :position | (position x / gridScale) @ (position y / gridScale) ].
	descriptions do: [ :aDescription | 
			| physicalStateShape physicalStateElement physicalStateElementPositionInGrid |
			physicalStateShape := RTEllipse new
				borderColor: Color black;
				color: (aDescription at: #color);
				size: (aDescription at: #size).
			physicalStateElement := physicalStateShape elementOn: (aDescription at: #particleName).
			view add: physicalStateElement.
			physicalStateElementPositionInGrid := positionTranslationBlock value: (aDescription at: #position).
			physicalStateElement translateTo: physicalStateElementPositionInGrid.
			physicalStateElement @ RTLabeled ]