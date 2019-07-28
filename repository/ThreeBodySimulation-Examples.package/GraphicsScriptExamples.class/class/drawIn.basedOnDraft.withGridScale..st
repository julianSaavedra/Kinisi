utilities
drawIn: view basedOnDraft: universeDraft withGridScale: gridScale

	| gridConfiguration particleRenderers positionTransformation massTransformation particleDrafts  |
	view canvas clean.
	view @ RTZoomableView.
	gridConfiguration := GridConfiguration withColor: (Color gray alpha: 0.7) size: 10 andScale: gridScale.
	GridRenderer new drawIn: view basedOn: gridConfiguration.
	particleDrafts := universeDraft particleDrafts.
	massTransformation := RelativeMeasureToNumberTransformation
		basedOn: (particleDrafts collect: [:particleDraft | particleDraft mass ])
		withMinimunAt: 10.
	positionTransformation := PositionToPointTransformation factor: gridConfiguration size / gridConfiguration scale.
	particleRenderers := particleDrafts
		inject: Dictionary new
		into: [:renderersMap :particleDraft |
			| renderer | 
			renderer := ParticleInUniverseRenderer
				with: particleDraft color
				using: positionTransformation
				and: massTransformation.
			renderer labelElementWhenRendering.
			renderersMap at: particleDraft particleName put: renderer.
			renderersMap ].

	particleDrafts	do: [ :aParticleDraft |
		particleRenderers
			at: aParticleDraft particleName
			ifPresent:[:renderer | renderer drawIn: view basedOn: aParticleDraft ]].

	view signalUpdate