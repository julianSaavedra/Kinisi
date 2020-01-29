initialization
initializeWidgets
	
	name := self newLabel.
	name label: label.
	xComponent := self instantiate: ScalarMeasurePresenter on: self xComponentPresenterDescription.
	yComponent := self instantiate: ScalarMeasurePresenter on: self yComponentPresenterDescription.
	
	self focusOrder
		add: xComponent;
		add: yComponent