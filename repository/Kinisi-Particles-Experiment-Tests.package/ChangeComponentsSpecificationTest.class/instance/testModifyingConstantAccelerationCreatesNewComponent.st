tests
testModifyingConstantAccelerationCreatesNewComponent

	| originalComponent newComponent newName newAcceleration |
	originalComponent := ChangeComponentSpecification
		constantAcceleration: (resource meterPerSquareSecondVectorWith: #(1 2 3))
		named: 'OriginalConstantAcceleration'.

	newName := 'NewNameConstantAcceleration'.
	newComponent := originalComponent name: newName.
	self deny: newComponent identicalTo: originalComponent.
	self assert: newComponent acceleration equals: originalComponent acceleration.
	self assert: newComponent name equals: newName.
	
	newAcceleration := resource meterPerSquareSecondVectorWith: #(4 5 6).
	newComponent := originalComponent acceleration: newAcceleration.
	self deny: newComponent identicalTo: originalComponent.
	self assert: newComponent acceleration equals: newAcceleration.
	self assert: newComponent name equals: originalComponent name