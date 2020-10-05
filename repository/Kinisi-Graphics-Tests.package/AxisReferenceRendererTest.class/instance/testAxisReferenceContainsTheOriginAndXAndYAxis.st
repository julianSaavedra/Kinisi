tests
testAxisReferenceContainsTheOriginAndXAndYAxis

	| renderer |
	renderer := AxisReferenceRenderer inOrigin.
	
	renderer drawIn: canvas.
	
	{ 'origin'. 'x'. 'y' } do: [:model |
		self withShapeFor: model do: [:originShape |
			self assert: originShape notNil ] ]