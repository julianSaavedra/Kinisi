tests
testElementIsLabeledWithParticleNameIfRendererIsTellToLabelElement

	| view renderer methodWasSent particle |
	view := RTView new.
	particle := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	renderer := ParticleInUniverseRenderer
		with:
			(FigureDecoration
				with: Color red
				and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).

	renderer labelElementWhenRendering.

	methodWasSent := false.
	self
		overrideMethodNamed: #particleName
		in: ParticleState
		with: [:receiver :arguments | methodWasSent := true ]
		during: [ renderer drawIn: view basedOn: particle ].

	self assert: methodWasSent