initialization
xComponentPresenterDescription

	^MeasurePresenterDescription
		labeled: 'X'
		with: measure x
		changingModelWith: [:newXComponent |
			self updateModelWith: newXComponent and: measure y]
		and: unitOptions