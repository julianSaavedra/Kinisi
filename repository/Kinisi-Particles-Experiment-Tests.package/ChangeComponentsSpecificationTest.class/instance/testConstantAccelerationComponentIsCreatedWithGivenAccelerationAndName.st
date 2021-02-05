tests
testConstantAccelerationComponentIsCreatedWithGivenAccelerationAndName

	| name acceleration component |
	name := 'ConstantAcceleration'.
	acceleration := resource meterPerSquareSecondVectorWith: #(1 2 3).
	component := ChangeComponentSpecification constantAcceleration: acceleration named: name.

	self assert: component acceleration equals: acceleration.
	self assert: component name equals: name	