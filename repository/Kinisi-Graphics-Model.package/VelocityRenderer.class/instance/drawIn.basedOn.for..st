rendering
drawIn: view basedOn: particle for: shape

	| velocityEndPointElement velocity |
	velocity := particle velocity.
	velocity isZero ifFalse: [
		velocityEndPointElement := self newElementBasedOn: velocity in: view.
		self linkFrom: shape to: velocityEndPointElement in: view
		]