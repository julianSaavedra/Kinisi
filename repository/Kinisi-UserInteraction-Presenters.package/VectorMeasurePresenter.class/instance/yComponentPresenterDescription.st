initialization
yComponentPresenterDescription

	^MeasurePresenterDescription
		labeled: 'Y'
		with: measure y
		changingModelWith: [:newYComponent |
			self updateModelWith: measure x and: newYComponent ]
		and: unitOptions