test - review
testElementInPositionOneMetersInXAndYIsRenderedAtPointTwentyNegativeTwentyIfGridSizeIsTenAndScaleIsHalfMeter

	| view testResource particleDraft gridConfiguration canvas universeDraft renderer |
	testResource := PhysicsTestResource new.
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft position: testResource oneMeterInAllComponentsVector.
	
	gridConfiguration :=  GridConfiguration
		withColor: Color gray
		size: 10
		andScale: testResource oneMeter / 2.
	
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.
	
	canvas := view canvas.
	self assert: (canvas shapeForPosition: 20 @ 20 negated) element model == particleDraft



	