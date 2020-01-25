utilities
drawIn: view basedOnDraft: universeDraft with: gridConfiguration

	| particleRenderers massTransformation particleDrafts |
	view canvas clean.
	"view @ RTZoomableView."
	GridRenderer new drawIn: view basedOn: gridConfiguration.
	particleDrafts := universeDraft particles.
	massTransformation := RelativeMeasureToNumberTransformation
		basedOn: (particleDrafts collect: [ :particleDraft | particleDraft mass ])
		withMinimunAt: 10.

	particleRenderers := particleDrafts
		inject: Dictionary new
		into: [ :renderersMap :particleDraft | 
			| renderer |
			renderer := ParticleInUniverseRenderer
				with: (FigureDecoration with: particleDraft color and: massTransformation)
				using: (PositionDecoration with: gridConfiguration size / gridConfiguration scale).
			renderer labelElementWhenRendering.
			renderersMap at: particleDraft particleName put: renderer.
			renderersMap ].

	particleDrafts
		do: [ :aParticleDraft | 
			particleRenderers
				at: aParticleDraft particleName
				ifPresent: [ :renderer | renderer drawIn: view basedOn: aParticleDraft ] ].

	view signalUpdate