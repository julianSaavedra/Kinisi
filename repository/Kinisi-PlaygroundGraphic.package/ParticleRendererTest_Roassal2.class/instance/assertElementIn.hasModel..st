asserting
assertElementIn: position hasModel: expectedModel

	self assert: (view canvas shapeForPosition: position) element model == expectedModel