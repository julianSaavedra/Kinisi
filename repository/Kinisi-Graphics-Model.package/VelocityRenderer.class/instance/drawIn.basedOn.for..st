rendering
drawIn: view basedOn: particle for: particleElement

	| velocityEndPointElement velocity |
	velocity := particle velocity.
	velocity isZero ifFalse: [
		velocityEndPointElement := self newElementBasedOn: velocity in: view.
		self linkFrom: particleElement to: velocityEndPointElement in: view
		]