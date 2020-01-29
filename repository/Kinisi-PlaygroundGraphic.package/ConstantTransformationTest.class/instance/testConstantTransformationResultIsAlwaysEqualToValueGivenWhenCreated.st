tests
testConstantTransformationResultIsAlwaysEqualToValueGivenWhenCreated

	| transformation |
	transformation := ConstantTransformation with: 10.
	 
	self assert: (transformation value: 123456) equals: 10.
	self assert: (transformation value: nil) equals: 10.
	self assert: (transformation value: 'aString') equals: 10