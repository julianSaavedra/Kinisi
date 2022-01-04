private
yAxisEndPointIn: canvas

	^self
		labeledPointFor: #y
		with: 0 @ self axisEndDistance negated
		in: canvas