asserting
assertShapeFor: model isIn: position

	self
		withShapeFor: model
		do: [:shape | self assert: shape position equals: position ]