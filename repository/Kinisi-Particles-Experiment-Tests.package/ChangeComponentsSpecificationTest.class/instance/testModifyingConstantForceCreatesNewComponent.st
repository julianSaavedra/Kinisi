tests
testModifyingConstantForceCreatesNewComponent

	| originalComponent newComponent newName newForce |
	originalComponent := ChangeComponentSpecification
		constantForce: (resource newtonVectorWith: #(1 2 3))
		named: 'OriginalConstantForce'.

	newName := 'NewNameConstantForce'.
	newComponent := originalComponent name: newName.
	self deny: newComponent identicalTo: originalComponent.
	self assert: newComponent force equals: originalComponent force.
	self assert: newComponent name equals: newName.
	
	newForce := resource newtonVectorWith: #(4 5 6).
	newComponent := originalComponent force: newForce.
	self deny: newComponent identicalTo: originalComponent.
	self assert: newComponent force equals: newForce.
	self assert: newComponent name equals: originalComponent name