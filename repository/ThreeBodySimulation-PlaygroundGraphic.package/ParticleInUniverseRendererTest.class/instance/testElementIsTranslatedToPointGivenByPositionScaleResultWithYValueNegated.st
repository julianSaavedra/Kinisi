tests
testElementIsTranslatedToPointGivenByPositionScaleResultWithYValueNegated

	| view physicalState renderer elementPosition |
	view := RTView new.
	testResource := PhysicsTestResource new.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	renderer := ParticleInUniverseRenderer
		with: (FigureDecoration with: Color red and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).

	self
		overrideMethodNamed: #translateTo:
		in: RTElement
		with: [:receiver :arguments | elementPosition := arguments first ]
		during: [ renderer drawIn: view basedOn: physicalState ].

	self assert: elementPosition equals: 1 @ 1 negated