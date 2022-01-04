tests
testAxisReferenceDistanceFromOriginCannotBeNegative

	self
		should: [ AxisReferenceRenderer movedFromCenterBy: -1]
		raise: RenderingError
		whoseDescriptionIncludes: 'Distance from origin cannot be negative'
		description: 'Test did not failed as expected'