test - review
testElementInPositionOneMetersInYOnlyIsRenderedAtPointZeroNegativeTwentyIfGridSizeIsTwentyAndScaleIsOneMeter

	| view testResource particleDraft gridConfiguration canvas universeDraft renderer |
	testResource := PhysicsTestResource new.
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft position: testResource oneMeterInYVector.
	
	gridConfiguration :=  GridConfiguration
		withColor: Color gray
		size: 20
		andScale: testResource oneMeter.
	
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.
	
	canvas := view canvas.
	self assert: (canvas shapeForPosition: 0 @ 20 negated) element model == particleDraft



	