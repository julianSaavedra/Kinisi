utilities
drawIn: view basedOnDraft: universeDraft withGridScale: gridScale

	| positionTranslationBlock particleDrafts sizeTranslationBlock gridSize |
	"Grid scale -> Grid size - separation between lines of the grid"
	"#@: add an interaction to the node"
	view canvas clean.
	view @ RTZoomableView.
	gridSize := 10.
	view
		@
			(RTGridView new
				color: (Color gray alpha: 0.7);
				gridSize: gridSize).
	"massScale := UnitProvider soleInstance kilogram with: 1e6."
	
	sizeTranslationBlock := [:mass |
		| baseSize minScale masses |
		baseSize := 10.
		masses := particleDrafts collect: [:particleDraft | particleDraft mass amount ].
		minScale := masses min log.
		(1 max: mass amount log - minScale) * baseSize
		].
	
	positionTranslationBlock := [ :position | ((position x / gridScale) @ (position y / gridScale)) * gridSize ].
	particleDrafts := universeDraft particleDrafts.
	particleDrafts do: [:aParticleDraft | 
			| physicalStateShape physicalStateElement |
			physicalStateShape := RTEllipse new
				borderColor: Color black;
				color: aParticleDraft color;
				size: (sizeTranslationBlock value: aParticleDraft mass).
			physicalStateElement := physicalStateShape elementOn: aParticleDraft particleName.
			view add: physicalStateElement.
			physicalStateElement translateTo: (positionTranslationBlock value: aParticleDraft position).
			physicalStateElement @ RTLabeled ].
	
	view signalUpdate