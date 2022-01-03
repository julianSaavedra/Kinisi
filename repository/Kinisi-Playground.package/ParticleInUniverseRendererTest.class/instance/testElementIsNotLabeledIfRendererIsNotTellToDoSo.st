tests
testElementIsNotLabeledIfRendererIsNotTellToDoSo

	| view physicalState renderer methodWasSent |
	view := RTView new.
	physicalState := self physicalStateWithOneKilogramAndPositionWithOneMeterInXAndY.
	renderer := ParticleInUniverseRenderer
		with:
			(FigureDecoration
				with: Color red
				and: (ConstantTransformation with: 20))
		using: (PositionDecoration with: self oneOverOneMeterScale).

	methodWasSent := false.
	self
		overrideMethodNamed: #applyOn:
		in: LabelDecoration
		with: [:receiver :arguments | methodWasSent := true ]
		during: [ renderer drawIn: view basedOn: physicalState ].

	self deny: methodWasSent