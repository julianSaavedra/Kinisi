tests
testElementIsLabeledWithParticleNameIfRendererIsTellToLabelElement

	| view renderer methodWasSent physicalState |
	view := RTView new.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
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
		in: PhysicalState
		with: [:receiver :arguments | methodWasSent := true ]
		during: [ renderer drawIn: view basedOn: physicalState ].

	self assert: methodWasSent