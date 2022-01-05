tests
testElementColorIsSetAsDefinedDecoration

	| view elementsColor renderer color physicalState |
	view := RTView new.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	color := Color red.
	renderer := ParticleInUniverseRenderer
		with:
			(FigureDecoration
				with: color
				and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).

	self
		overrideMethodNamed: #color:
		in: RTEllipse
		with: [:receiver :arguments | elementsColor := arguments first ]
		during: [ renderer drawIn: view basedOn: physicalState ].
		
	self assert: elementsColor equals: color