tests
testScalingCannotBeCreatedWithNegativeValue

	self
		should: [ FeatureScaling atPercentage: -0.01 ]
		raise: Error
		whoseDescriptionIncludes: 'Scaling must be within 0 and 1'
		description: 'Test did not failed as expected'