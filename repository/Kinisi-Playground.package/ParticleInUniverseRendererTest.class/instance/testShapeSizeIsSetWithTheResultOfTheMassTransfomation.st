tests
testShapeSizeIsSetWithTheResultOfTheMassTransfomation

	| view physicalState renderer particleSize massTrasnformationResult |
	view := RTView new.
	massTrasnformationResult := 20.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	renderer := ParticleInUniverseRenderer
		with: (FigureDecoration with: Color red and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).
	
	self
		overrideMethodNamed: #size:
		in: RTEllipse
		with: [:receiver :arguments | particleSize := arguments first ]
		during: [ renderer drawIn: view basedOn: physicalState ].
		
	self assert: particleSize equals: massTrasnformationResult.