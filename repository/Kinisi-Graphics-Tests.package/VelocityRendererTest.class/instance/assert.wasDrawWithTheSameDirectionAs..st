tests
assert: velocityEdge wasDrawWithTheSameDirectionAs: velocity

	| velocityEdgeEnd |
	velocityEdgeEnd := velocityEdge to.
	"velocityEdgeEnd y is negated as canvas draws Y component negated."
	self
		assert: velocityEdgeEnd x / velocity x amount
		equals: velocityEdgeEnd y negated / velocity y amount