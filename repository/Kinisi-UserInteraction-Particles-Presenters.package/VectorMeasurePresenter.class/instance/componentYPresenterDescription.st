private - description
componentYPresenterDescription

	^MeasurePresenterDescription
		labeled: 'Y'
		with: measure y
		changingModelWith: [:newComponentY |
			self updateModelWith: measure x and: newComponentY ]
		and: unitOptions