asserting
assert: velocityEdge wasDrawWithTheSameDirectionAs: velocityVector

	| velocityEdgeEnd |
	velocityEdgeEnd := velocityEdge to position.
	"velocityEdgeEnd y is negated as canvas draws Y component negated."
	self
		assert: velocityEdgeEnd x / velocityVector x amount
		equals: velocityEdgeEnd y negated / velocityVector y amount