tests
testAxisReferenceDistanceFromOriginCannotBeNegative

	self
		assert: [ AxisReferenceRenderer movedFromCenterBy: -1]
		failsWith: 'Distance from origin cannot be negative'