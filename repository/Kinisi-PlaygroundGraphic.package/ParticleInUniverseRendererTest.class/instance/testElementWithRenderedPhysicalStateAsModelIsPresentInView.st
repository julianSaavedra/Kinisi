tests
testElementWithRenderedPhysicalStateAsModelIsPresentInView

	| view physicalState renderer |
	view := RTView new.
	testResource := PhysicsTestResource new.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	renderer := ParticleInUniverseRenderer
		with: (FigureDecoration with: Color red and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).

	renderer drawIn: view basedOn: physicalState.

	self assert: (view elements anySatisfy: [ :element | element model == physicalState ])