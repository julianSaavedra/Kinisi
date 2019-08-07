test - review
testElementInPositionOneMetersInXOnlyIsRenderedAtPointTenZeroIfGridSizeIsTenAndScaleIsOneMeter

	| view testResource particleDraft gridConfiguration canvas universeDraft renderer |
	testResource := PhysicsTestResource new.
	view := RTView new.
	
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft position: (testResource vectorWithXOnlyWithMeters: 1).
	
	gridConfiguration :=  GridConfiguration
		withColor: Color gray
		size: 10
		andScale: testResource oneMeter.
	
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.
	
	canvas := view canvas.
	self assert: (canvas shapeForPosition: 10 @ 0) element model == particleDraft



	