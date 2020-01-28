test
testParticleInPositionOneMeterInXAndYIsRenderedAtPointTwentyNegativeTwentyIfGridSizeIsTenAndScaleIsHalfMeter

	| testResource particleDraft universeDraft renderer |
	testResource := PhysicsTestResource new.
	universeDraft := UniverseObservation new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft position: testResource oneMeterInAllComponentsVector.
	particleDraft save.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.
	
	self
		assert: (view canvas shapeForPosition: 20 @ 20 negated) element model particleName
		equals: particleDraft particleName



	