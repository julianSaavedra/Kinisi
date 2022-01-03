tests
testLabelIsAdddedToElementShowingTextAsGivenByBlock

	| element decoration |
	element := self elementWithShapeAndAlreadyInViewWithModel: 1000.
	decoration := LabelDecoration using: [:model | model asString ].

	self
		assertTextOfLabelIs: '1000'
		during: [ decoration applyOn: element ]