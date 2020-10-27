tests
testAxisReferenceIsDrawnInTheOriginOfTheCanvas

	| renderer |
	renderer := AxisReferenceRenderer inOrigin.
	
	renderer drawIn: canvas.
	
	self withShapeFor: 'origin' do: [:originShape |
		self assert: originShape position isZero ]