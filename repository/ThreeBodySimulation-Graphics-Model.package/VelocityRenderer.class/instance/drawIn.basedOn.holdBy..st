actions
drawIn: aView basedOn: velocityVector holdBy: physicalStateElement

	| velocityEndPointElement |
	velocityVector isZero ifFalse: [
		velocityEndPointElement := self newElementBasedOn: velocityVector in: aView.
		self linkFrom: physicalStateElement to: velocityEndPointElement in: aView
		]