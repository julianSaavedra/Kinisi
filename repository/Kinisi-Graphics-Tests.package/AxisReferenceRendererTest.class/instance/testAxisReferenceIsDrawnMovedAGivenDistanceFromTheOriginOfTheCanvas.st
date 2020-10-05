tests
testAxisReferenceIsDrawnMovedAGivenDistanceFromTheOriginOfTheCanvas

	| renderer |
	renderer := AxisReferenceRenderer movedFromCenterBy: 50.
	
	renderer drawIn: canvas.
	
	self withShapeFor: 'origin' do: [:originShape |
		self assert: originShape position equals: -50@50 ]