tests
testConstantForceComponentIsCreatedWithGivenForceAndName

	| name force component |
	name := 'ConstantForce'.
	force := resource newtonVectorWith: #(1 2 3).
	component := ChangeComponentSpecification constantForce: force named: name.

	self assert: component force equals: force.
	self assert: component name equals: name	