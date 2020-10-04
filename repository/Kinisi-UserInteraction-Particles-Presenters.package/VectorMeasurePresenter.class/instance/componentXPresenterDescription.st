private - description
componentXPresenterDescription

	^MeasurePresenterDescription
		labeled: 'X'
		with: measure x
		changingModelWith: [:newComponentX |
			self updateModelWith: newComponentX and: measure y]
		and: unitOptions