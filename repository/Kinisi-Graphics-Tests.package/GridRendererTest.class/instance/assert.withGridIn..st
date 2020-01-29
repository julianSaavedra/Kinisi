tests
assert: oneArgumentBlock withGridIn: aView

	| gridInView |
	gridInView := aView attributeAt: RTGridView name.
	self assert: (oneArgumentBlock value: gridInView) 