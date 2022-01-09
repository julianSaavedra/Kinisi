initialization
initializeBasedOn: scenario and: interfaceSpec

	property := interfaceSpec property.
	measureDimension := interfaceSpec dimension.
	title := self chartTitle.
	xLabel := self xLabel.
	yLabel := self yLabel.
	self initializeAccumulatorsBasedOn: scenario and: interfaceSpec