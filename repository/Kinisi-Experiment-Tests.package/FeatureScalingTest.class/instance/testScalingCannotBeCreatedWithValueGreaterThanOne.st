tests
testScalingCannotBeCreatedWithValueGreaterThanOne

	self
		should: [ FeatureScaling atPercentage: 1.01 ]
		raise: Error
		whoseDescriptionIncludes: 'Scaling must be within 0 and 1'
		description: 'Test did not failed as expected'