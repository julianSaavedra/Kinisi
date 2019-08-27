initialization
initializeMeasureWidgets

	mass := self
		instantiate: ScalarMeasurePresenter
		on: self massPresenterDescription.
	position := self
		instantiate: VectorMeasurePresenter
		on: self positionPresenterDescription.
	velocity := self
		instantiate: VectorMeasurePresenter
		on: self velocityPresenterDescription.
	acceleration := self
		instantiate: VectorMeasurePresenter
		on: self accelerationPresenterDescription